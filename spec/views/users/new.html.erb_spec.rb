require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :sex => "MyString",
      :age => 1,
      :occupation_id => 1,
      :zip => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_sex", :name => "user[sex]"
      assert_select "input#user_age", :name => "user[age]"
      assert_select "input#user_occupation_id", :name => "user[occupation_id]"
      assert_select "input#user_zip", :name => "user[zip]"
    end
  end
end
