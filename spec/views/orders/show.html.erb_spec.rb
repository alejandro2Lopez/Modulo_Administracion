require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
<<<<<<< HEAD
      total_price: ""
=======
      dishesDesc: "Dishes Desc",
      cost: "",
      state: 2
>>>>>>> master
    ))
  end

  it "renders attributes in <p>" do
    render
<<<<<<< HEAD
    expect(rendered).to match(//)
=======
    expect(rendered).to match(/Dishes Desc/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
>>>>>>> master
  end
end
