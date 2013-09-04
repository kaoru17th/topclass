class CreateSubjectSemesters < ActiveRecord::Migration
  def change
    create_table :subject_semesters do |t|
      t.integer :idsubject
      t.integer :idsemester
      t.string :status

      t.timestamps
    end
  end
end
