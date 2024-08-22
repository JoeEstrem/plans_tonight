class PollsController < ApplicationController
  # skip_before_action :authenticate_user!

  def new
    @plan = Plan.find(params[:plan_id])

    if @plan.polls.find_by(user: current_user)
      redirect_to plan_path(@plan), notice: 'Your vote already exist.'
    else
      @poll = Poll.new
    end
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def create
    @poll = Poll.new(poll_params)
    @poll.user = current_user
    @plan = Plan.find(params[:plan_id])
    @poll.plan = @plan
    if @poll.save
      @poll.update(submitted: true)
      @plan = @poll.plan

      if @plan.all_polls_filled?
        @plan.update(status: :done)
      end

      redirect_to plan_path(@plan), notice: 'Poll was successfully created.'
    else
      render :new
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:mood, :alcohol, :smoking, :food, :user_id)
  end
end
