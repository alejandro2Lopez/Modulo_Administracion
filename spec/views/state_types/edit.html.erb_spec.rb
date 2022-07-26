require 'rails_helper'

RSpec.describe "state_types/edit", type: :view do
  before(:each) do
    @state_type = assign(:state_type, StateType.create!(
      type: ""
    ))
  end

  it "renders the edit state_type form" do
    render

    assert_select "form[action=?][method=?]", state_type_path(@state_type), "post" do

      assert_select "input[name=?]", "state_type[type]"
    end
  end
end
