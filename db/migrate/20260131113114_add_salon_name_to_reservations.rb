class AddSalonNameToReservations < ActiveRecord::Migration[7.2]
  def change
    add_column :reservations, :salon_name, :string
  end
end
