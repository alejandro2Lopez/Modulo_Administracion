class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.belongs_to :dish
      t.belongs_to :client
      t.integer :isConfirm, default: 0
      
      t.timestamps
    end
  end
end
