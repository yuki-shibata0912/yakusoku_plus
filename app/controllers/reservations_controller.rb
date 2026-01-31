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

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to reservations_path, notice: "予約を更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    reservation = Reservation.find(params[:id])
    reservation.destroy
    redirect_to reservations_path, notice: "予約を削除しました"
  end



private

def reservation_params
  params.require(:reservation).permit(:date, :start_time, :end_time)
  end
end