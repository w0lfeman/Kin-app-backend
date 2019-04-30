class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :password_digest
      t.integer :phone_number
      t.integer :pincode

      t.timestamps
    end
  end
end
