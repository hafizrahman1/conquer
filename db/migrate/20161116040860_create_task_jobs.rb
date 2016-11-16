class CreateTaskJobs < ActiveRecord::Migration
  def change
    create_table :task_jobs do |t|
      t.integer :task_id
      t.integer :job_id
      t.timestamps null: false
    end
  end
end
