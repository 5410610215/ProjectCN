require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :password => "MyString"
    ).as_new_record)
  end
end
