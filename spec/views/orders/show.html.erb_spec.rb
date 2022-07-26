require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      dishesDesc: "Dishes Desc",
      cost: "",
      state: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Dishes Desc/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
