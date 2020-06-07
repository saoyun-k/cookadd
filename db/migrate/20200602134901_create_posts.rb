class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :dish_name, null: false, index: true
      t.text :foodstuff, null: false
      t.text :recipe, null: false
      t.timestamps
    end
  end
end
