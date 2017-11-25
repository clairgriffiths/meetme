class RemoveIdsFromCalendarDays < ActiveRecord::Migration[5.0]
  def self.up
    remove_column :calendar_days, :calendar_id
    remove_column :calendar_days, :day_id
  end
  
  def self.down
    add_column :calendar_days, :calendar_id
    add_column :calendar_days, :day_id
  end
end
