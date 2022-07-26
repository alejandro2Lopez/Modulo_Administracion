require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        total_price: ""
      ),
      Order.create!(
        total_price: ""
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
