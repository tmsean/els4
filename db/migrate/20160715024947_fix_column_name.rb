class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :user_name, :name
  	rename_column :lessons, :lesson_status, :status
  	rename_column :courses, :cname, :name
  end
end
