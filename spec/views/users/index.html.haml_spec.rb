require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :username => "Username",
        :password => "Password"
      ),
      stub_model(User,
        :username => "Username",
        :password => "Password"
      )
    ])
  end
end
