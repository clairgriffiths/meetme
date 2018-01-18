# frozen_string_literal: true

class Calendar < ApplicationRecord
  has_many :calendar_days
  has_many :days, through: :calendar_days

  serialize :days_of_weeks, Array

  validates_presence_of :start_date, :end_date

  def add_days
    days = calculate_dates
    days.each do |d|
      self.days << Day.find_by(date: d)
    end

  end

  private

  def calculate_dates
   (self.start_date..self.end_date).to_a.select {|date| self.days_of_week.include?(date.wday.to_s)}
  end

end
