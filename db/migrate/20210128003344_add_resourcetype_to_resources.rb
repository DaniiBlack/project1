class AddResourcetypeToResources < ActiveRecord::Migration[5.2]
  def change
    add_column :resources, :resource_type, :text
  end
end
