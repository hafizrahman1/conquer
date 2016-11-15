class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :photo_id
      t.text :description
      t.integer :deadline
      
    end
  end
end
