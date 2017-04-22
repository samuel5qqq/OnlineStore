class ChangePriceTypeInPizzas < ActiveRecord::Migration[5.0]
  def self.up
    change_column :pizzas, :price, :decimal, :precision => 12, :scale => 3
  end
 
  def self.down
    change_column :pizzas, :price, :float
  end
end
