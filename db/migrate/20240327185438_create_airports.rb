class CreateAirports < ActiveRecord::Migration[7.1]
  def change
    create_table :airports do |t|
      t.string :code, index: { unique: true, name: 'unique_code_airport_idx' }
      t.string :name

      t.timestamps
    end
  end
end
