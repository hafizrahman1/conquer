class UserPhobia < ActiveRecord::Base
  belongs_to :user
  belongs_to :phobia
end
