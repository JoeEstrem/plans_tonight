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

  def show
    @plan = Plan.find(params[:id])
    @bar = @plan.bar
  end



  private

  def plan_params
    params.require(:plan).permit(:date_time, :deadline, :location, polls_attributes: [:mood, :alcohol, :smoking, :food])
  end
end
