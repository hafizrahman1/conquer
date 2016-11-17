class AddNameToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :name, :string
    add_column :user_plans, :user_deadline, :datetime
  end
end
