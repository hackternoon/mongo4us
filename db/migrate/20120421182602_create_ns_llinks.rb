class CreateNsLlinks < ActiveRecord::Migration
  def change
    create_table :ns_llinks do |t|
      t.string :href

      t.timestamps
    end
  end
end
