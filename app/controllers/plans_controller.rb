class PlansController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @plan = Plan.new
    @plan.polls.build
  end

  def create
    @plan = Plan.new(plan_params)
    if @plan.save
      redirect_to @plan, notice: 'Plan was successfully created.'
    else
      render :new
    end
  end

  def show
    @plan = Plan.find(params[:id])
    @bar = @plan.bar
  end



  private

  def plan_params
    params.require(:plan).permit(:date_time, :location, polls_attributes: [:mood, :alcohol, :smoking, :food])
  end
end
