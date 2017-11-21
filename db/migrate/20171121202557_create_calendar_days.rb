class CreateCalendarDays < ActiveRecord::Migration
  def change
    create_table :calendar_day do |t|
      t.integer :calendar_id
      t.integer :day_id

      t.timestamps null: false
    end
  end
end
