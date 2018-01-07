class CreateCalendarDays < ActiveRecord::Migration
  def change
    create_table :calendar_days do |t|

      t.timestamps null: false
    end
  end
end
