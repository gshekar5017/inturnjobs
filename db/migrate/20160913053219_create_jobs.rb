class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.text :job_description
      t.string :job_title
      t.decimal :salary
      t.string :city
      t.references :employer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
