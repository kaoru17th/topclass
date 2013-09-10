class CreateProgramSemesters < ActiveRecord::Migration
  def change
    create_table :program_semesters do |t|
      t.integer :program_id
      t.integer :semester_id
      t.string :status

      t.timestamps
    end
  end
end
