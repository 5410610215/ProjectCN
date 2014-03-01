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

  it "renders new solution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solutions_path, "post" do
      assert_select "input#solution_topic_id[name=?]", "solution[topic_id]"
      assert_select "textarea#solution_solution[name=?]", "solution[solution]"
      assert_select "input#solution_user[name=?]", "solution[user]"
      assert_select "input#solution_worked[name=?]", "solution[worked]"
    end
  end
end
