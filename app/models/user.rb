class User < ActiveRecord::Base
  attr_accessible :age, :occupation_id, :sex, :zip
end
