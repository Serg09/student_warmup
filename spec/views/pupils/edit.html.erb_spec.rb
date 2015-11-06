require 'rails_helper'

RSpec.describe "pupils/edit", type: :view do
  before(:each) do
    @pupil = assign(:pupil, Pupil.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :age => 1
    ))
  end

  it "renders the edit pupil form" do
    render

    assert_select "form[action=?][method=?]", pupil_path(@pupil), "post" do

      assert_select "input#pupil_first_name[name=?]", "pupil[first_name]"

      assert_select "input#pupil_last_name[name=?]", "pupil[last_name]"

      assert_select "input#pupil_email[name=?]", "pupil[email]"

      assert_select "input#pupil_age[name=?]", "pupil[age]"
    end
  end
end
