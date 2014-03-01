require 'spec_helper'

describe "solutions/new" do
  before(:each) do
    assign(:solution, stub_model(Solution,
      :topic_id => 1,
      :solution => "MyText",
      :user => "MyString",
      :worked => 1
    ).as_new_record)
  end
end
