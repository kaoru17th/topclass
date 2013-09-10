class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.integer :user_id
      t.integer :program_id
      t.string :status

      t.timestamps
    end
  end
end
