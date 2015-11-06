require 'rails_helper'

RSpec.describe "pupils/index", type: :view do
  before(:each) do
    assign(:pupils, [
      Pupil.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :age => 1
      ),
      Pupil.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :age => 1
      )
    ])
  end

  it "renders a list of pupils" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
