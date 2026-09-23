class ReservationsController < ApplicationController
  def create
    @room = Room.find(params[:room_id])

    @reservation = @room.reservations.new(reservation_params)

    @reservation.user = current_user


    if @reservation.save
      redirect_to room_path(@room), notice: "予約が完了しました！"
    else
      render "rooms/show", status: :unprocessable_entity
    end
  end

  def my_reservations
  @reservations = current_user.reservations
  end

  private
   def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :person_num)
  end
end
