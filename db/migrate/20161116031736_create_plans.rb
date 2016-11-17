class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :fear_id
      t.integer :deadline

      t.timestamps null: false
    end
  end
end
