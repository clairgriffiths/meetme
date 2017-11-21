class CreateDays < ActiveRecord::Migration
  def change
    create_table :day do |t|
      t.datetime :date
      t.string :day
      t.string :month
      t.string :year
      t.boolean :bank_holiday
      t.boolean :weekday
      t.boolean :weekend

      t.timestamps null: false
    end
  end
end
