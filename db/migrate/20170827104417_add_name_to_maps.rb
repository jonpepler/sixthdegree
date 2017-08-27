class AddNameToMaps < ActiveRecord::Migration[5.0]
  def change
    add_column :maps, :name, :string
  end
end
