require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        dishesDesc: "Dishes Desc",
        cost: "",
        state: 2
      ),
      Order.create!(
        dishesDesc: "Dishes Desc",
        cost: "",
        state: 2
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", text: "Dishes Desc".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
