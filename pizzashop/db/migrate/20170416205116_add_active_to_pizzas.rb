class AddActiveToPizzas < ActiveRecord::Migration[5.0]
  def change
    add_column :pizzas, :active, :boolean
  end
end
