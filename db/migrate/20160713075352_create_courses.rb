class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :cname
      t.string :language

      t.timestamps null: false
    end
  end
end

