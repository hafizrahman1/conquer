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

  def find_user_plan(user)
    UserPlan.where(user_id: user.id, plan_id: self.id)
  end

  def ratings
    ratings_array = []
    self.user_plans.each do |user_plan|
      if !user_plan.rating.nil?
        ratings_array << user_plan.rating
      end
    end
    ratings_array
  end

  def average_rating
    sum = 0.00
    ratings.each do |rating|
        sum += rating
      end

      (sum / ratings.count).round(2)

  end


  def plans_comments
    comments_array = []
    self.user_plans.each do |user_plan|
      if !user_plan.comment.nil?
        comments_array << user_plan.comment
      end
    end
    comments_array
  end
end
