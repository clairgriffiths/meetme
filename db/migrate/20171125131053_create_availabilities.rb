class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.boolean :available
      t.boolean :maybe
      t.boolean :unavailable

      t.timestamps
    end
  end
end
