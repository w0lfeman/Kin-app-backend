class RemoveProfileUrlFromContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :profile_pic
  end
end
