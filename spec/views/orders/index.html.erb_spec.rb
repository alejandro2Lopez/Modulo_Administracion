require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
<<<<<<< HEAD
        total_price: ""
      ),
      Order.create!(
        total_price: ""
=======
        dishesDesc: "Dishes Desc",
        cost: "",
        state: 2
      ),
      Order.create!(
        dishesDesc: "Dishes Desc",
        cost: "",
        state: 2
>>>>>>> master
      )
    ])
  end

  it "renders a list of orders" do
    render
<<<<<<< HEAD
    assert_select "tr>td", text: "".to_s, count: 2
=======
    assert_select "tr>td", text: "Dishes Desc".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
>>>>>>> master
  end
end
