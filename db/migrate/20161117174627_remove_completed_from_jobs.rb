class RemoveCompletedFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :completed
  end
end
