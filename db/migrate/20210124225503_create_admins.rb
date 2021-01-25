class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.text :username
      t.text :email
      t.text :password
      t.text :photo
      t.text :description

      t.timestamps
    end
  end
end
