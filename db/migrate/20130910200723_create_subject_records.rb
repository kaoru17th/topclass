class CreateSubjectRecords < ActiveRecord::Migration
  def change
    create_table :subject_records do |t|
      t.integer :semester_id
      t.integer :user_id_student
      t.integer :subject_id
      t.integer :user_id_teacher
      t.float :grade
      t.string :status

      t.timestamps
    end
  end
end
