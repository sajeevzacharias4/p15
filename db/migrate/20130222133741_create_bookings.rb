class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings, :id=>false do |t|
      t.string :id, :primary => true
      t.string :room_id
      t.date :start_date
      t.date :end_date
      t.integer :number_of_guests

      t.timestamps
    end
#execute "ALTER TABLE bookings ADD PRIMARY KEY (ref);"
  end
end
