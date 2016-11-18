class AddColumsToUserPlan < ActiveRecord::Migration
  def change
    add_column :user_plans, :rating, :integer
    add_column :user_plans, :comment, :string
  end
end
