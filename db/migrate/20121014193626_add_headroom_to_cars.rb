class AddHeadroomToCars < ActiveRecord::Migration
  def change
    add_column :cars, :headroom, :string
  end
end
