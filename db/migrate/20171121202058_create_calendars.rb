class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :url

      t.timestamps null: false
    end
  end
end
