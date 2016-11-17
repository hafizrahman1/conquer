class Plan < ActiveRecord::Base
  has_many :user_plans
  has_many :users, through: :user_plans

  has_many :plan_jobs
  has_many :jobs, through: :plan_jobs

  belongs_to :fear

  def jobs_attributes=(jobs_attributes)
    jobs_attributes.each do |i, job|
      self.jobs.build(job)
    end
  end
end
