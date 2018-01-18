class AddDayNameToDay < ActiveRecord::Migration[5.0]
  def self.up
    add_column :days, :day_name, :string
  end

  def self.down
    remove_column :days, :day_name
  end
end
