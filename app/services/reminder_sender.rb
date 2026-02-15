class ReminderSender
  def self.call(date: Date.current + 1)
    Reservation.includes(:user).where(date: date).find_each do |reservation|
      ReminderMailer
        .reservation_reminder(reservation)
        .deliver_now
    end
  end
end
