class CreateRobots < ActiveRecord::Migration[5.2]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :serial
      t.boolean :friendly
      t.string :color
      t.string :sound

      t.timestamps
    end
  end
end
