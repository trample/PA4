require 'spec_helper'

describe "ratings/index" do
  before(:each) do
    assign(:ratings, [
      stub_model(Rating,
        :user_id => 1,
        :movie_id => 2,
        :rating => 3,
        :timestamp => 4
      ),
      stub_model(Rating,
        :user_id => 1,
        :movie_id => 2,
        :rating => 3,
        :timestamp => 4
      )
    ])
  end

  it "renders a list of ratings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
