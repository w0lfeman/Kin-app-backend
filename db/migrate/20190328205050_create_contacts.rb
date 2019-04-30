class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.integer :primary_number
      t.integer :secondary_number
      t.string :relationship
      t.string :profile_pic
      t.belongs_to :user

      t.timestamps
    end
  end
end
