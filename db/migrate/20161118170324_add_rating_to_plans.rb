class AddRatingToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :rating, :integer, default: 0
  end
end
