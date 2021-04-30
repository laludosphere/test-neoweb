require "time"

class Timeslot < ApplicationRecord
  belongs_to :restaurant

  def time(datetime)
    datetime.strftime("%k:%M")
  end

end
