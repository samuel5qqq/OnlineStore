class Add < ActiveRecord::Migration[5.0]
  def change
      add_column :hists, :order_time, :datetime
      add_column :hists, :pizza_id, :integer
      add_column :hists, :quantity, :integer
      add_column :hists, :unit_price, :decimal
      add_column :hists, :total_price, :decimal
      
      add_reference :hists, :users, index: true, foreign_key: true
  end

end
