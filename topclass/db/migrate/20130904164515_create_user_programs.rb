class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.integer :iduser
      t.integer :idprogram
      t.string :status

      t.timestamps
    end
  end
end
