require 'rails_helper'

RSpec.describe "pupils/show", type: :view do
  before(:each) do
    @pupil = assign(:pupil, Pupil.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :age => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/1/)
  end
end
