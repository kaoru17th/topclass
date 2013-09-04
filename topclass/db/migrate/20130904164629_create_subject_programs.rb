class CreateSubjectPrograms < ActiveRecord::Migration
  def change
    create_table :subject_programs do |t|
      t.integer :idsubject
      t.integer :idprogram
      t.string :status
      t.string :subjecttype

      t.timestamps
    end
  end
end
