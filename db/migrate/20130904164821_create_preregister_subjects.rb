class CreatePreregisterSubjects < ActiveRecord::Migration
  def change
    create_table :preregister_subjects do |t|
      t.integer :idsemester
      t.integer :idsubject
      t.integer :iduserstudent
      t.string :status

      t.timestamps
    end
  end
end
