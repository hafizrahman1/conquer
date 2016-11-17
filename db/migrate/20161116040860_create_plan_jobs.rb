class CreatePlanJobs < ActiveRecord::Migration
  def change
    create_table :plan_jobs do |t|
      t.integer :plan_id
      t.integer :job_id
      t.timestamps null: false
    end
  end
end
