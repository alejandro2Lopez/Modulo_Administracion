class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.date :date
      t.money :total_price

      

      t.timestamps
    end
  end
end
