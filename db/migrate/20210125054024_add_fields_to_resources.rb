class AddFieldsToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :type, :text
    add_column :resources, :title, :text
    add_column :resources, :description, :text
    add_column :resources, :image, :text
  end
end
