class Restaurant < ApplicationRecord
  has_many :timeslots, dependent: :destroy
  validates :name, presence: true
end
