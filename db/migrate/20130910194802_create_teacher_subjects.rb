class CreateTeacherSubjects < ActiveRecord::Migration
  def change
    create_table :teacher_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.string :status

      t.timestamps
    end
  end
end
