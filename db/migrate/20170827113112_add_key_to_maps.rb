class AddKeyToMaps < ActiveRecord::Migration[5.0]
  def change
    add_column :maps, :key, :string
  end
end
