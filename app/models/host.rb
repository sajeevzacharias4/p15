require 'csv'
class Host < ActiveRecord::Base
  attr_accessible :address, :name, :id
set_primary_key :id
validates :id, :presence=>true, :uniqueness=>true
has_many :rooms


def self.import(file)

 # CSV.foreach(file.path) do |row|
additional_rows_to_skip = 1
 CSV.foreach(file.path) do |row|
 if additional_rows_to_skip > 0
additional_rows_to_skip-=1
else
 p = Host.create!({
          :id => row[0],
          :name => row[1],
          :address => row[2],
        }
      )
  end
end
#Host.delete_all("ref='ref'")
end


  


end
