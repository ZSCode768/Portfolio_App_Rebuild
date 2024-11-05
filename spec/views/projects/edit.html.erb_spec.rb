require 'rails_helper'

RSpec.describe "projects/edit", type: :view do
  let(:project) {
    Project.create!(
      title: "MyString",
      string: "MyString",
      description: "MyString",
      text: "MyString",
      student: nil
    )
  }

  before(:each) do
    assign(:project, project)
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(project), "post" do

      assert_select "input[name=?]", "project[title]"

      assert_select "input[name=?]", "project[string]"

      assert_select "input[name=?]", "project[description]"

      assert_select "input[name=?]", "project[text]"

      assert_select "input[name=?]", "project[student_id]"
    end
  end
end
