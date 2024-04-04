class ChangeDurationToBeIntegerInFlights < ActiveRecord::Migration[7.1]
  def change
    change_column :flights, :duration, :integer
  end
end
