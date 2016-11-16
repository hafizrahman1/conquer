class TaskJob < ActiveRecord::Base
  belongs_to :task
  belongs_to :job
end
