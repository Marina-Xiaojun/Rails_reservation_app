class RoomsController < ApplicationController
 def index
  @area = params[:area]

  @rooms = Room.all

 if @area.present?

  if @area == "京都"
        @rooms = @rooms.where("address LIKE ?", "京都府%")
  else
        @rooms = @rooms.where("address LIKE ?", "%#{@area}%")
  end

 end

  if params[:keyword].present?
    keyword = "%#{params[:keyword]}%"
    @rooms = @rooms.where(
    "name LIKE ? OR description LIKE ?",
    keyword,
    keyword
  )
  end
 end

 def my_rooms
  @rooms = current_user.rooms
end

 def show
  @room = Room.find(params[:id])
  @reservation = Reservation.new
 end

 def new
  @room = Room.new
end

def create
  @room = current_user.rooms.new(room_params)

  if @room.save
    redirect_to rooms_path
  else
    render :new
  end
end

 private

def room_params
  params.require(:room).permit(:name, :description, :price, :address)
end
end
