class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order(date: :asc, start_time: :asc)
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_paramas)

    if @reservation.save
      redirect_to reservations_path, notice: "予約を作成しました"

    else
      render :new, status: :unprocessable_entity, alert: "入力内容を確認してください"
  end
end

private

def reservation_paramas
  params.require(:reservation).permit(:date, :start_time, :end_time)
  end
end