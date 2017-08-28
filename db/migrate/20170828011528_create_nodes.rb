class CreateNodes < ActiveRecord::Migration[5.0]
  def change
    create_table :nodes do |t|
      t.string :name
      t.string :key

      t.timestamps
    end
  end
end
