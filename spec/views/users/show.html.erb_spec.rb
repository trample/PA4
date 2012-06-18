require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :sex => "Sex",
      :age => 1,
      :occupation_id => 2,
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sex/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Zip/)
  end
end
