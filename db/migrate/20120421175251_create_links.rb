class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :href
      t.string :tag1
      t.string :tag2
      t.string :tag3
      t.integer :user_id

      t.timestamps
    end
  end
end
