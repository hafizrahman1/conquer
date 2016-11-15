class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :tasks, :photo_id, :phobia_id
  end
end
