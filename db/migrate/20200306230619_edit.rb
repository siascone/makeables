class Edit < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :description, :text, null:false
  end
end
