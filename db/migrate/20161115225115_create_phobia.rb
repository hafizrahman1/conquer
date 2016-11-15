class CreatePhobia < ActiveRecord::Migration
  def change
    create_table :phobias do |t|
     t.string :name
     t.text :description
     t.string :resources, array: true
   end
  end
end
