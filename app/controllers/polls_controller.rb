class PollsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @poll = Poll.new
  end

  def show
    @poll = Poll.find(params[:id])
  end

  def create
    @poll = Poll.new(poll_params)
    if @poll.save
      redirect_to @poll, notice: 'Poll was successfully created.'
    else
      render :new
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:vibe)
  end
end
