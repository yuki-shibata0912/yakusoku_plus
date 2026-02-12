class Reservation < ApplicationRecord
   belongs_to :user
   validates :date, presence: true
   validates :start_time, presence: true
   validates :end_time, presence: true
   validates :salon_name, presence: true
   validate :end_time_after_start_time
   validate :no_time_overlap

   private

   def end_time_after_start_time
     return if start_time.blank? || end_time.blank?
     if end_time <= start_time
       errors.add(:end_time, "は開始時間より後の時間にしてください")
     end
   end

   def no_time_overlap
     return if date.blank? || start_time.blank? || end_time.blank?


     overlap = Reservation
       .where(user_id: user_id, date: date)
       .where.not(id: id)
       .where("start_time < ? AND end_time > ?", end_time, start_time)

     if overlap.exists?
       errors.add(:base, "この時間帯はすでに予約があります")
     end
  end
end
