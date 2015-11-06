require 'rails_helper'

RSpec.describe "pupils/new", type: :view do
  before(:each) do
    assign(:pupil, Pupil.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :age => 1
    ))
  end

  it "renders new pupil form" do
    render

    assert_select "form[action=?][method=?]", pupils_path, "post" do

      assert_select "input#pupil_first_name[name=?]", "pupil[first_name]"

      assert_select "input#pupil_last_name[name=?]", "pupil[last_name]"

      assert_select "input#pupil_email[name=?]", "pupil[email]"

      assert_select "input#pupil_age[name=?]", "pupil[age]"
    end
  end
end
