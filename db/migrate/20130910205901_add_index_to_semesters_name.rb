class AddIndexToSemestersName < ActiveRecord::Migration
  def change
        add_index :semesters, :name, unique: true
  end
end
