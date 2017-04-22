class CreatePizzas < ActiveRecord::Migration[5.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.float :price
      t.string :category

      t.timestamps
    end
  end
end
