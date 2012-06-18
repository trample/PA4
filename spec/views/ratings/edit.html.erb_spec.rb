require 'spec_helper'

describe "ratings/edit" do
  before(:each) do
    @rating = assign(:rating, stub_model(Rating,
      :user_id => 1,
      :movie_id => 1,
      :rating => 1,
      :timestamp => 1
    ))
  end

  it "renders the edit rating form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ratings_path(@rating), :method => "post" do
      assert_select "input#rating_user_id", :name => "rating[user_id]"
      assert_select "input#rating_movie_id", :name => "rating[movie_id]"
      assert_select "input#rating_rating", :name => "rating[rating]"
      assert_select "input#rating_timestamp", :name => "rating[timestamp]"
    end
  end
end
