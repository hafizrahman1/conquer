class Job < ActiveRecord::Base
  has_many :plan_jobs
  has_many :plans, through: :plan_jobs
end
