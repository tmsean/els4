class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :status
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.references :word, foreign_key: true

      t.timestamps null: false
    end
    add_index :results, [:user_id]
    add_index :results, [:lesson_id]
    add_index :results, [:word_id]
    add_index :results, [:user_id, :lesson_id, :word_id], unique: true
  end
end
