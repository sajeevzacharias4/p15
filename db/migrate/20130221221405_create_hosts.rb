class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts, :id=>false  do |t|
      t.string :id,:primary => true
      t.string :name
      t.string :address

      t.timestamps
    end
#execute "ALTER TABLE hosts ADD PRIMARY KEY (ref);"

  end
end
