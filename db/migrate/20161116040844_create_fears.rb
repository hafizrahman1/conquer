class CreateFears < ActiveRecord::Migration
  def change
    create_table :fears do |t|
      t.string :name
      t.string :description
      t.string :resources, array: true, default: []

      t.timestamps null: false
    end
  end
end
