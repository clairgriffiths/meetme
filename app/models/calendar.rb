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

  def calculate_end_date(params)
    days = calculate_days_to_add(params)
    self.update_attributes(end_date: self.start_date + days)
  end

  private

  def calculate_days_to_add(params)
    case
    when params[:one_week] == "1"
      7
    when params[:two_weeks] == "1"
      14
    when params[:three_weeks] == "1"
      21
    else
      0
    end
  end

  def calculate_dates
   (self.start_date..self.end_date).to_a.select {|date| self.days_of_week.include?(date.wday.to_s)}
  end

end
