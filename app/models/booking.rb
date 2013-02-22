require 'csv'
class Booking < ActiveRecord::Base
  attr_accessible :end_date, :number_of_guests, :id, :room_id, :start_date
set_primary_key :id
validates :id, :presence=>true, :uniqueness=>true
belongs_to :room


def self.import(file)

 # CSV.foreach(file.path) do |row|
additional_rows_to_skip = 1
 CSV.foreach(file.path) do |row|
 if additional_rows_to_skip > 0
additional_rows_to_skip-=1
else
 p = Booking.create!({
          :id => row[0],
          :room_id => row[1],
          :start_date => row[2],
	:end_date => row[2],
	:number_of_guests =>row[3],
        }
      )
  end
end

end


end
