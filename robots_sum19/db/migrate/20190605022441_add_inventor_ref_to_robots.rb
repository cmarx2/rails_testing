class AddInventorRefToRobots < ActiveRecord::Migration[5.2]
  def change
    add_reference :robots, :inventor, foreign_key: true
  end
end
