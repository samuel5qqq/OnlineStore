class Remove < ActiveRecord::Migration[5.0]
  def change
      remove_reference :hists, :users, index: true
  end
end
