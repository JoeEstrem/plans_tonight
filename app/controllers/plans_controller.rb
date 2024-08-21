class PlansController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @plan = Plan.new
    @plan.polls.build
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to @plan, notice: 'Invite your friends to participate.'
    else
      render :new, status: :unprocessable_entity, notice: "Please answer this question."
    end
  end

  def index
    @plans = Plan.all
    @user = current_user.id
  end

  def invitation
    @users = User.all
    @plan = Plan.find(params[:id])
  end

  def invite
    @plan = Plan.find(params[:id])
    LineMessageService.new("Sup? #{@plan.user.username} invited you to have some Plans on #{@plan.date_time}. Respond to him by following to http://localhost:3000/plans/#{params[:id]} ").call
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace(:invite, partial: "shared/invited_btn")
      end
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @bar = @plan.bar
    @marker = [
      {
        lat: @bar.latitude,
        lng: @bar.longitude
      }
    ]
  end



  private

  def plan_params
    params.require(:plan).permit(:date_time, :deadline, :location, polls_attributes: [:mood, :alcohol, :smoking, :food])
  end
end
