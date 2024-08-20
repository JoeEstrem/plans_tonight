class PollsController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @poll = Poll.find(params[:id])
  end

end
