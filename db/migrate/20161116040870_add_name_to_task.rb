class AddNameToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :name, :string
    add_column :user_tasks, :user_deadline, :datetime
  end
end
