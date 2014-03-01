require 'spec_helper'

describe "solveds/index" do
  before(:each) do
    assign(:solveds, [
      stub_model(Solved),
      stub_model(Solved)
    ])
  end
end
