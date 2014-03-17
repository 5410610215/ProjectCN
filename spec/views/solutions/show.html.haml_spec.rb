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
end
