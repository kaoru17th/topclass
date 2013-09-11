class AddIndexToProgramsCode < ActiveRecord::Migration
  def change
    add_index :programs, :code, unique: true
  end
end
