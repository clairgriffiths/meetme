class ChangeCalendarDateTimeToDate < ActiveRecord::Migration[5.0]
  def self.up
    change_column :calendars, :start_date, :date
    change_column :calendars, :end_date, :date
  end
 
  def self.down
    change_column :calendars, :start_date, :datetime
    change_column :calendars, :end_date, :datetime
  end
end
