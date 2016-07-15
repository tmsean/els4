class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.integer :status
      t.reference :user, foreign_key: true
      t.reference :course, foreign_key: true

      t.timestamps null: false
    end
    add_index :lessons, [:user_id]
    add_index :lessons, [:course_id]
    add_index :lessons, [:course_id, :user_id], unique: true
  end
end
