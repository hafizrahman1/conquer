class Task < ActiveRecord::Base
  has_many :user_tasks
  has_many :users, through: :user_tasks
  has_many :task_jobs
  has_many :jobs, through: :task_jobs
  belongs_to :fear
end
