class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.string :quota
      t.integer :credits
      t.string :status

      t.timestamps
    end
  end
end
