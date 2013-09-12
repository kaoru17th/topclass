class ChangeColumnNameToSubjectRecords < ActiveRecord::Migration
  def change
    rename_column :subject_records, :user_id_student, :user_student_id
    rename_column :subject_records, :user_id_teacher, :user_teacher_id
    rename_column :preregister_subjects, :user_id_student, :user_id
  end
end
