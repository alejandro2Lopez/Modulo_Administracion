class AddAttributesToOrderDetails2 < ActiveRecord::Migration[7.0]
  def change
    add_column :order_details, :state, :integer, default: 0
  end
end
