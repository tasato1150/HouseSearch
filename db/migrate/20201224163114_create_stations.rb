class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :station_name, null: false
      t.integer :line_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
