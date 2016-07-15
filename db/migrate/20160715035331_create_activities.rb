class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :word_num
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps null: false
    end
    add_index :activities, [:user_id]
    add_index :activities, [:lesson_id]
    add_index :activities, [:course_id]
    add_index :activities, [:course_id, :user_id, :lesson_id], unique: true
  end
end
