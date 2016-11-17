class PlanJob < ActiveRecord::Base
  belongs_to :plan
  belongs_to :job
end
