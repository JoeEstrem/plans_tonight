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
    @poll.user = current_user
    if @poll.save
      redirect_to plan_invitation_path(@plan), notice: 'Poll was successfully created.'
    else
      render :new
    end
  end

  private

  def poll_params
    params.require(:poll).permit(:mood, :alcohol, :smoking, :food)
  end
end
