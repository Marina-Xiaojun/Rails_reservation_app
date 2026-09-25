class ReservationsController < ApplicationController
 def confirm
  @room = Room.find(params[:room_id])
  @reservation = @room.reservations.new(reservation_params)

  if @reservation.person_num.blank? || @reservation.person_num.to_i < 1
    @reservation.errors.add(:person_num, "人数は1人以上で入力してください")
  end

  if @reservation.start_date.present? && @reservation.start_date < Date.current
    @reservation.errors.add(:start_date, "今日以降の日付にしてください")
  end

  if @reservation.end_date.present? && @reservation.end_date < Date.current
    @reservation.errors.add(:end_date, "今日以降の日付にしてください")
  end

  if @reservation.start_date.present? &&
     @reservation.end_date.present? &&
     @reservation.end_date <= @reservation.start_date
    @reservation.errors.add(:end_date, "チェックイン日以降の日付にしてください")
  end

  if @reservation.errors.any?
    render "rooms/show", status: :unprocessable_entity
  end
 end

  def create
    @room = Room.find(params[:room_id])

    @reservation = @room.reservations.new(reservation_params)

    @reservation.user = current_user


    if @reservation.save
      redirect_to my_reservations_path, notice: "予約が完了しました！"
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
