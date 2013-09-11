class AddIndexToSubjectsCode < ActiveRecord::Migration
  def change
        add_index :subjects, :code, unique: true
  end
end
