class EditStepsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :project_steps, :project_id
    add_column :project_steps, :project_id, :integer
    
  end
end
