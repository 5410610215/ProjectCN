require 'spec_helper'

describe "solveds/edit" do
  before(:each) do
    @solved = assign(:solved, stub_model(Solved))
  end

  it "renders the edit solved form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solved_path(@solved), "post" do
    end
  end
end
