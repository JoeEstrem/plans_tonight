class PlansController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @plan = Plan.new
    @plan.polls.build
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user = current_user
    if @plan.save
      # redirect_to plan_invitation_path(@plan), notice: 'Invite your friends to participate.'
      raise
    else
      render :new, status: :unprocessable_entity, notice: "Please answer this question."
    end
  end

  def index
    @plans = Plan.all
    @user = current_user.id
    @past_plans = Plan.past
    @pending_plans = Plan.pending
    @done_plans = Plan.done
  end

  def invitation
    @users = User.all
    @plan = Plan.find(params[:id])
  end

  def invite
    @plan = Plan.find(params[:id])
    LineMessageService.new("Sup? #{@plan.user.username} invited you to have some Plans on #{@plan.date_time}. Respond to him by following to http://localhost:3000/plans/#{params[:id]}").call
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(:invite, partial: "shared/invited_btn")
      end
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @users = User.all
    @bar = @plan.bar
    @marker = [
      {
        lat: @bar.latitude,
        lng: @bar.longitude
      }
    ]

    unless @plan.polls.find_by(user: current_user)
      redirect_to new_plan_poll_path(@plan)
    end
  end

  def mark_as_done
    @plan.update(status: :done)
    redirect_to @plan.user, notice: 'Plan was sucessfully marked as done'
  end

  def mark_as_pending
    @plan.update(status: :pending)
    redirect_to @plan.user, notice: 'Plan was sucessfully marked as pending'
  end

  def mark_as_past
    @plan.past(status: :past)
    redirect_to @plan.user, notice: 'plan was sucessfully marked as past'
  end

  private

  def plan_params
    params.require(:plan).permit(:date_time, :deadline, :location, polls_attributes: [:mood, :alcohol, :smoking, :food, :user_id])
  end
end
