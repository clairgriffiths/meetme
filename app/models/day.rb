class Day < ActiveRecord::Base
  has_many :calendar_days
  has_many :calendars, through: :calendar_days
  has_many :availablities
  has_many :users, through: :availabilities
end
