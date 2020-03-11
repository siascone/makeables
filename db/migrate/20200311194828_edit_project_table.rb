class EditProjectTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :description
    add_column :projects, :description, :text
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
