class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :meaning
      t.string :sound

      t.timestamps null: false
    end
  end
end
