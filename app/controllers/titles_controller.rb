class TitlesController < ApplicationController
  def index
    @title = Title.new
    @room = Room.find(params[:room_id])
  end

  def create
    @room = Room.find(params[:room_id])
    @title = @room.titles.new(title_params)
    if @title.save
      redirect_to room_titles_path(@room)
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def title_params
    params.require(:title).permit(:content, :amount, :memo).merge(user_id: current_user.id)
  end
end