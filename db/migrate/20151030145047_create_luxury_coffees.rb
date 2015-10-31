class CreateLuxuryCoffees < ActiveRecord::Migration
  def change
    create_table :luxury_coffees do |t|
      t.string :name
      t.text :description
      t.integer :intensity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
