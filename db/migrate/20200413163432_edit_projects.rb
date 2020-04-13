class EditProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :description
  end
end
