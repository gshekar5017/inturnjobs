class AddStudentIdProfile < ActiveRecord::Migration
  def change
     add_column :profile, :student_id, :integer
  end
end
