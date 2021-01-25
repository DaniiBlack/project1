class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.text :type
      t.text :title
      t.text :description
      t.text :image
      t.integer :admin_id

      t.timestamps
    end
  end
end
