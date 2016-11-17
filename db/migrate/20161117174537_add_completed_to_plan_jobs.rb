class AddCompletedToPlanJobs < ActiveRecord::Migration
  def change
    add_column :plan_jobs, :completed, :boolean, default: false
  end
end
