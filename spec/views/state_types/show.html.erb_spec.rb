require 'rails_helper'

RSpec.describe "state_types/show", type: :view do
  before(:each) do
    @state_type = assign(:state_type, StateType.create!(
      type: "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
  end
end
