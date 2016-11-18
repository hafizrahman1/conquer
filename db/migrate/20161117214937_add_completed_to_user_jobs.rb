class AddCompletedToUserJobs < ActiveRecord::Migration
  def change
    add_column :user_jobs, :completed, :boolean, default: false
  end
end
