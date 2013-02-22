class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms, :id=>false do |t|
      t.string :id, :primary => true
      t.string :host_id
      t.integer :capacity

      t.timestamps
    end
#execute "ALTER TABLE rooms ADD PRIMARY KEY (ref);"
  end
end
