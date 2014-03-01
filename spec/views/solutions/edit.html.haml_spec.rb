require 'spec_helper'

describe "solutions/edit" do
  before(:each) do
    @solution = assign(:solution, stub_model(Solution,
      :topic_id => 1,
      :solution => "MyText",
      :user => "MyString",
      :worked => 1
    ))
  end
end
