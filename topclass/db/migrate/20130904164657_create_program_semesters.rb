class CreateProgramSemesters < ActiveRecord::Migration
  def change
    create_table :program_semesters do |t|
      t.integer :idprogram
      t.integer :idsemester
      t.string :status

      t.timestamps
    end
  end
end
