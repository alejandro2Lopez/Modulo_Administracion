require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      dishesDesc: "MyString",
      cost: "",
      state: 1
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input[name=?]", "order[dishesDesc]"

      assert_select "input[name=?]", "order[cost]"

      assert_select "input[name=?]", "order[state]"
    end
  end
end
