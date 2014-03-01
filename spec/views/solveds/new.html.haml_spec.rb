require 'spec_helper'

describe "solveds/new" do
  before(:each) do
    assign(:solved, stub_model(Solved).as_new_record)
  end
end
