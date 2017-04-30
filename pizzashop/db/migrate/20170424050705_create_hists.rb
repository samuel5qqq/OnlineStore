class CreateHists < ActiveRecord::Migration[5.0]
  def change
    create_table :hists do |t|

      t.timestamps
    end
  end
end
