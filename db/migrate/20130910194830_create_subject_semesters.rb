class CreateSubjectSemesters < ActiveRecord::Migration
  def change
    create_table :subject_semesters do |t|
      t.integer :subject_id
      t.integer :semester_id
      t.string :status

      t.timestamps
    end
  end
end
