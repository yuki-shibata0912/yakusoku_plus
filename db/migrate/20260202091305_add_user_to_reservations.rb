class AddUserToReservations < ActiveRecord::Migration[7.2]
  def change
    add_reference :reservations, :user, null: false, foreign_key: true
  end
end
