class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :profilename
      t.string :designation
      t.string :department
      t.string :university

      t.timestamps null: false
    end
  end
end
