class Phobia < ActiveRecord::Base

  has_many :tasks

  has_many :user_phobias

  has_many :users, through: :user_phobias

end
