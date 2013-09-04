class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.string :code
      t.string :objective
      t.string :status

      t.timestamps
    end
  end
end
