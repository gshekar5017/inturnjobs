class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :profilename
      t.string :firstname
      t.string :lastname
      t.string :mobile_no
      t.string :linked_in_url
      t.string :current_location
      t.string :total_work_experience
      t.string :current_industry
      t.string :key_skills
      t.string :resume_headline
      t.string :basic_graduation
      t.string :post_graduation
      t.string :doctorate_phd
      t.string :certification1
      t.string :certification2
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
