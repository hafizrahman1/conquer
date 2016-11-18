class AddCommentsToPlan < ActiveRecord::Migration
  def change
    add_column :plans, :comments, :string, array: true, default: []
  end
end
