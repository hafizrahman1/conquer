class CreateUserPhobias < ActiveRecord::Migration
  def change
    create_table :user_phobias do |t|
      t.integer :user_id
      t.integer :phobia_id
    end
  end
end
