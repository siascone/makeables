class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :type_name, null:false

      t.timestamps
    end
    add_index :categories, :type_name
  end
end
