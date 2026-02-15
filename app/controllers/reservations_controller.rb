class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @reservations = current_user.reservations.order(date: :asc, start_time: :asc)
  end

  def new
    @reservation = current_user.reservations.new
  end

  def create
    @reservation = current_user.reservations.new(reservation_params)

    if @reservation.save
      redirect_to reservations_path, notice: "予約を作成しました"

    else
      render :new, status: :unprocessable_entity, alert: "入力内容を確認してください"
    end
end

  def edit
    @reservation = current_user.reservations.find(params[:id])
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
    reservation = current_user.reservations.find(params[:id])
    reservation.destroy
    redirect_to reservations_path, notice: "予約を削除しました"
  end



private

def reservation_params
  params.require(:reservation).permit(:date, :start_time, :end_time, :salon_name,)
  end
end
