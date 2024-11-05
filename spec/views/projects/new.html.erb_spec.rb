require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      title: "MyString",
      string: "MyString",
      description: "MyString",
      text: "MyString",
      student: nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "input[name=?]", "project[string]"

      assert_select "input[name=?]", "project[description]"

      assert_select "input[name=?]", "project[text]"

      assert_select "input[name=?]", "project[student_id]"
    end
  end
end
