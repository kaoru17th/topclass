class AddProgramIdToPreregisterSubjects < ActiveRecord::Migration
  def change
    add_column :preregister_subjects, :program_id, :integer
  end
end
