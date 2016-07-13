class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :word_num

      t.timestamps null: false
    end
  end
end
