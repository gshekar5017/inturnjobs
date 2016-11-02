class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :company
      t.string :job_title
      t.text :job_description
      t.string :job_type
      t.integer :salary
      t.string :city

      t.timestamps null: false
    end
  end
end
