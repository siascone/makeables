class EditProjectsTableDescription < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :description
  end
end
