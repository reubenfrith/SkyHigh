class AddConfirmationToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :confirmation_status, :boolean
  end
end
