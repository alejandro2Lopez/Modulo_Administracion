require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
<<<<<<< HEAD
      total_price: ""
=======
      dishesDesc: "MyString",
      cost: "",
      state: 1
>>>>>>> master
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

<<<<<<< HEAD
      assert_select "input[name=?]", "order[total_price]"
=======
      assert_select "input[name=?]", "order[dishesDesc]"

      assert_select "input[name=?]", "order[cost]"

      assert_select "input[name=?]", "order[state]"
>>>>>>> master
    end
  end
end
