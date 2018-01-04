class AddDayofweekToCalendar < ActiveRecord::Migration[5.0]
  def self.up
    add_column :calendars, :mondays, :boolean
    add_column :calendars, :tuesdays, :boolean
    add_column :calendars, :wednesdays, :boolean
    add_column :calendars, :thursdays, :boolean
    add_column :calendars, :fridays, :boolean
    add_column :calendars, :saturdays, :boolean
    add_column :calendars, :sundays, :boolean
  end
  
  def self.down
    remove_column :calendars, :mondays, :boolean
    remove_column :calendars, :tuesdays, :boolean
    remove_column :calendars, :wednesdays, :boolean
    remove_column :calendars, :thursdays, :boolean
    remove_column :calendars, :fridays, :boolean
    remove_column :calendars, :saturdays, :boolean
    remove_column :calendars, :sundays, :boolean
  end
end

