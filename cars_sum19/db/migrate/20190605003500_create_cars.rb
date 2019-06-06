class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :mileage
      t.string :color
      t.float :price

      t.timestamps
    end
  end
end
