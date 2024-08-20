class BarsController < ApplicationController
  def show
    @bar = Bar.find(params[:id])
    @bar = @plan.bar
  end
end
