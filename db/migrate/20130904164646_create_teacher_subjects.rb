class CreateTeacherSubjects < ActiveRecord::Migration
  def change
    create_table :teacher_subjects do |t|
      t.integer :iduserteacher
      t.integer :idsubject
      t.string :status

      t.timestamps
    end
  end
end
