require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :sex => "MyString",
      :age => 1,
      :occupation_id => 1,
      :zip => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_sex", :name => "user[sex]"
      assert_select "input#user_age", :name => "user[age]"
      assert_select "input#user_occupation_id", :name => "user[occupation_id]"
      assert_select "input#user_zip", :name => "user[zip]"
    end
  end
end
