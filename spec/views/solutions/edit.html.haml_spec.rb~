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

  it "renders the edit solution form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", solution_path(@solution), "post" do
      assert_select "input#solution_topic_id[name=?]", "solution[topic_id]"
      assert_select "textarea#solution_solution[name=?]", "solution[solution]"
      assert_select "input#solution_user[name=?]", "solution[user]"
      assert_select "input#solution_worked[name=?]", "solution[worked]"
    end
  end
end
