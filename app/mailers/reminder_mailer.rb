class ReminderMailer < ApplicationMailer
  def reservation_reminder(reservation)
    @reservation = reservation
    mail(
      to: reservation.user.email,
      subject: "【Yakusoku+】明日の予約リマインド"
    )
  end
end
