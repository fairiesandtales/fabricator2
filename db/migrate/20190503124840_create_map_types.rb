class CreateMapTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :map_types do |t|
      t.string :name
      t.string :color

      t.timestamps
    end
  end
end
