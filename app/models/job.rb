class Job < ActiveRecord::Base
  has_many :task_jobs
  has_many :tasks, through: :task_jobs
end
