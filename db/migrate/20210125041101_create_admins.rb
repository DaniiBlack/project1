class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.text :username
      t.text :email
      t.text :image
      t.text :description
      t.string :password_digest
    end
  end
end
