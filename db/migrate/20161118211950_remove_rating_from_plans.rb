class RemoveRatingFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :rating
    add_column :plans, :rating, :integer, array: true, default: []
  end
end
