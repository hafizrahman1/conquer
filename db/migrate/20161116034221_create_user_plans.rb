class CreateUserPlans < ActiveRecord::Migration
  def change
    create_table :user_plans do |t|
      t.integer :user_id
      t.integer :plan_id
      t.boolean :status, default: false
    end
  end
end
