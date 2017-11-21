class Day < ActiveRecord::Base
  has_many :calendar_days
  has_many :calendars, through: :calendar_days
end
