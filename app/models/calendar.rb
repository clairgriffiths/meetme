class Calendar < ActiveRecord::Base
  has_many :calendar_days
  has_many :days, through: :calendar_days
  # clean up
  accepts_nested_attributes_for :days
end
