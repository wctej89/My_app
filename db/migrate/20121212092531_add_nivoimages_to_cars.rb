class AddNivoimagesToCars < ActiveRecord::Migration
  def change
    add_column :cars, :imagetwo, :string
    add_column :cars, :imagethree, :string
    add_column :cars, :imagefour, :string
  end
end
