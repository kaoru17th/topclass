class CreateSubjectRecords < ActiveRecord::Migration
  def change
    create_table :subject_records do |t|
      t.integer :idsemester
      t.integer :iduserstudent
      t.integer :idsubject
      t.integer :iduserteacher
      t.float :grade
      t.string :status

      t.timestamps
    end
  end
end
