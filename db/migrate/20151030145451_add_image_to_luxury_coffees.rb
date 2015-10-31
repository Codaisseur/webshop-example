class AddImageToLuxuryCoffees < ActiveRecord::Migration
  def change
    add_column :luxury_coffees, :image, :string
  end
end
