require 'spec_helper'

describe "rules/index" do
  before(:each) do
    assign(:rules, [
      stub_model(Rule),
      stub_model(Rule)
    ])
  end
end
