require 'spec_helper'

describe "solutions/index" do
  before(:each) do
    assign(:solutions, [
      stub_model(Solution,
        :topic_id => 1,
        :solution => "MyText",
        :user => "User",
        :worked => 2
      ),
      stub_model(Solution,
        :topic_id => 1,
        :solution => "MyText",
        :user => "User",
        :worked => 2
      )
    ])
  end
end
