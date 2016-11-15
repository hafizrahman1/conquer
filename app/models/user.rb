class User < ActiveRecord::Base
  has_many :user_phobias
  has_many :phobias, through: :user_phobias
  has_many :user_tasks
  has_many :tasks, through: :user_tasks
end
