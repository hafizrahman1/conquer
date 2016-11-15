class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
       t.string :name
       t.integer :age
       t.string :gender
       t.integer :weight
       t.integer :height
       t.string :bio
     end
  end
end
