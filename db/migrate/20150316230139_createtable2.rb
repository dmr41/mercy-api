class Createtable2 < ActiveRecord::Migration
  def change
    change_column :users, :first_name, :string, default: "", null: false
  end
end
