class RenameCalendarDayTable < ActiveRecord::Migration
   def self.up
    rename_table :calendar_day, :calendar_days
  end
  
  def self.down
    rename_table :calendar_days, :calendar_day
  end
end
