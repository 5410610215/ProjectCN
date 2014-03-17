require 'spec_helper'

describe "solutions/show" do
  before(:each) do
    @solution = assign(:solution, stub_model(Solution,
      :topic_id => 1,
      :solution => "MyText",
      :user => "User",
      :worked => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/User/)
    rendered.should match(/2/)
  end
end
