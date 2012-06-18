require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :sex => "Sex",
        :age => 1,
        :occupation_id => 2,
        :zip => "Zip"
      ),
      stub_model(User,
        :sex => "Sex",
        :age => 1,
        :occupation_id => 2,
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
