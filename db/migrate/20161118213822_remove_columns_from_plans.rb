class RemoveColumnsFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :rating
    remove_column :plans, :comments
  end
end
