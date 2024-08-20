class PlansController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @plan = Plan.new
  end

  def show
    @plan = Plan.find(params[:id])
  end

end
