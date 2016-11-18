class AddCompletedToUserJobs < ActiveRecord::Migration
  def change
    add_column :user_jobs, :completed, :boolean
  end
end
