class PollsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @body_class = "bg-yellow"
    @plan = Plan.find(params[:plan_id])

    if @plan.polls.find_by(user: current_user, submitted: true)
      redirect_to plan_path(@plan), notice: 'Your vote already exist.'
    else
      @poll = Poll.find_by(user: current_user, plan: @plan) || Poll.new
    end
  end

  def shows
    @poll = Poll.find(params[:id])
  end

  def create
    #handeling create and update in same action
    @plan = Plan.find(params[:plan_id])
    @poll = Poll.find_by(plan: @plan, user: current_user)
    if @poll
      @poll.update(poll_params)
    else
      @poll = Poll.new(poll_params)
      @poll.user = current_user
      @poll.plan = @plan
    end

    if @poll.save

      if @plan.all_polls_filled? || @plan.deadline_passed?
        @plan.close_polls!(@plan.location)
      else
        @plan.update(status: :pending)
      end

      redirect_to plan_path(@plan), notice: 'Poll was successfully created.'
    else
      render :new
    end
  end

  def update
    @plan = Plan.find(params[:plan_id])
    @poll = Poll.find_by(plan: @plan, user: current_user)

    if @poll.update(poll_params)
      handle_poll_submission
      redirect_to plan_path(@plan), notice: 'Poll was successfully updated.'
    else
      render :edit
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:mood, :alcohol, :smoking, :food, :user_id, :submitted)
  end
end
