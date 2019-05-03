class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.integer :x
      t.integer :y
      t.integer :z
      t.references :map_type, foreign_key: true

      t.timestamps
    end
  end
end
