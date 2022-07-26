require 'rails_helper'

RSpec.describe "state_types/new", type: :view do
  before(:each) do
    assign(:state_type, StateType.new(
      type: ""
    ))
  end

  it "renders new state_type form" do
    render

    assert_select "form[action=?][method=?]", state_types_path, "post" do

      assert_select "input[name=?]", "state_type[type]"
    end
  end
end
