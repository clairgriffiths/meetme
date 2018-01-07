class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.date :start_date
      t.date :end_date
      t.string :url
      t.string :days_of_week, array: true, default: []

      t.timestamps null: false
    end
  end
end
