class AddImageToPizzas < ActiveRecord::Migration[5.0]
  def change
    add_column :pizzas, :image, :string
  end
end
