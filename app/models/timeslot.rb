class Timeslot < ApplicationRecord
  belongs_to :restaurant
  # add day to my model timeslot
  DAYS = {
    'Monday' => 'Lundi',
    'Tuesday' => 'Mardi',
    'Wednesday' => 'Mercredi',
    'Thursday' => 'Jeudi',
    'Friday' => 'Vendredi',
    'Saturday' => 'Samedi',
    'Sunday' => 'Dimanche',
  }
  validates :day, inclusion: { in: DAYS }
  validates :day, presence:true
end
