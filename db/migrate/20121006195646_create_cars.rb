class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :mpg
      t.integer :price
      t.integer :handling
      t.integer :interior
      t.integer :looks
      t.integer :legroom
      t.string :image

      t.timestamps
    end
  end
end
