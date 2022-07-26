class AddAttributesToOrderDetails < ActiveRecord::Migration[7.0]
  def change
    add_column :order_details, :order_date, :date
    add_column :order_details, :status, :integer 
  end
end
