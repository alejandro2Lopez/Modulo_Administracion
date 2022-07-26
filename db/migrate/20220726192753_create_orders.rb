class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :dishesDesc
      t.money :cost
      t.integer :state
      t.date :date
      t.belongs_to :client
      
      t.timestamps
    end
  end
end
