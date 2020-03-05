class CreateProjectSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :project_steps do |t|
      t.integer :project_id, null:false
      t.string :heading, null:false
      t.text :body, null:false

      t.timestamps
    end
    add_index :project_steps, :project_id
  end
end
