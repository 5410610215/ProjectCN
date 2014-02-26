require 'spec_helper'

describe "solveds/index" do
  before(:each) do
    assign(:solveds, [
      stub_model(Solved),
      stub_model(Solved)
    ])
  end

  it "renders a list of solveds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
