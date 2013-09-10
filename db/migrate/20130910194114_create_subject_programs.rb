class CreateSubjectPrograms < ActiveRecord::Migration
  def change
    create_table :subject_programs do |t|
      t.integer :subject_id
      t.integer :program_id
      t.string :status
      t.string :subjecttype

      t.timestamps
    end
  end
end
