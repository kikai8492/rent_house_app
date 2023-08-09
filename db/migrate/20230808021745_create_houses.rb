class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :rent
      t.text :address
      t.string :house_age
      t.text :remarks

      t.timestamps
    end
  end
end
