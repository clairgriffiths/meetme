# frozen_string_literal: true

class Calendar < ApplicationRecord
  has_many :calendar_days
  has_many :days, through: :calendar_days

  serialize :days_of_weeks, Array

  def create_calendar_days

  end

end
