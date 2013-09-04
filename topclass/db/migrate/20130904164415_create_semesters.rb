class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :name
      t.string :status
      t.timestamp :startdate
      t.timestamp :finaldate

      t.timestamps
    end
  end
end
