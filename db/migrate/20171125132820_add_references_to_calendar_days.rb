class AddReferencesToCalendarDays < ActiveRecord::Migration[5.0]
  def change
    add_reference :calendar_days, :calendar, foreign_key: true
    add_reference :calendar_days, :day, foreign_key: true
  end
end
