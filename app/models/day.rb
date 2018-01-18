class Day < ApplicationRecord
  has_many :calendar_days
  has_many :calendars, through: :calendar_days
  has_many :availablities
  has_many :users, through: :availabilities

  validates_uniqueness_of :date


end
