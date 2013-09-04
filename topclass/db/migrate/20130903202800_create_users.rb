class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :identificationtype
      t.string :identification
      t.string :status
      t.string :usertype
      t.string :code
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
