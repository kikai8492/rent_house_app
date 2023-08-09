class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :near_station_name
      t.string :line_name
      t.string :walk
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
