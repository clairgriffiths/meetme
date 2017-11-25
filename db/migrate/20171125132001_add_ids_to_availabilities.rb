class AddIdsToAvailabilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :availabilities, :user, foreign_key: true
    add_reference :availabilities, :day, foreign_key: true
  end
end
