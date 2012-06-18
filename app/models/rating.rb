class Rating < ActiveRecord::Base
  attr_accessible :movie_id, :rating, :timestamp, :user_id
end
