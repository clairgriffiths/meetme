class AddDaysOfWeekToCalendars < ActiveRecord::Migration[5.0]
  def self.up
    add_column :calendars, :days_of_week, :string, array: true, default: []
  end
  
  def self.delete
    remove_column :calendars, :days_of_week
  end
end
