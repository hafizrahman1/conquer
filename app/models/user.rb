class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :user_fears
  has_many :fears, through: :user_fears
  has_many :user_plans
  has_many :plans, through: :user_plans
  has_many :user_jobs
  has_many :jobs, through: :user_jobs

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name
    end
  end

  def jobs_by_plan(plan)
    ary = []
    plan.jobs.each do |job|
      @connection = UserJob.find_by(user_id: self, job_id: job.id)
      if !@connection.completed
        ary << job
      end
    end
    ary
  end

  def jobs_completion(job)
    userJob = UserJob.find_by(user_id: self.id, job_id: job.to_i)
    userJob.completed = true
    userJob.save
  end

  def completed_plans
    UserPlan.where(user_id: self.id, status: true)
  end
  

end
