require 'rails_helper'

RSpec.describe "orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      dishesDesc: "MyString",
      cost: "",
      state: 1
    ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", order_path(@order), "post" do

      assert_select "input[name=?]", "order[dishesDesc]"

      assert_select "input[name=?]", "order[cost]"

      assert_select "input[name=?]", "order[state]"
    end
  end
end
