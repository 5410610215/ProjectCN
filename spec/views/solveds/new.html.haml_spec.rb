require 'spec_helper'

describe "solveds/new" do
  before(:each) do
    assign(:solved, stub_model(Solved).as_new_record)
  end

  it "renders new solved form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solveds_path, "post" do
    end
  end
end
