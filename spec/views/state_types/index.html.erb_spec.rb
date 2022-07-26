require 'rails_helper'

RSpec.describe "state_types/index", type: :view do
  before(:each) do
    assign(:state_types, [
      StateType.create!(
        type: "Type"
      ),
      StateType.create!(
        type: "Type"
      )
    ])
  end

  it "renders a list of state_types" do
    render
    assert_select "tr>td", text: "Type".to_s, count: 2
  end
end
