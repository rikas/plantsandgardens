class CreatePlants < ActiveRecord::Migration[6.1]
  def change
    create_table :plants do |t|
      # garden_id
      t.references :garden, null: false, foreign_key: true
      t.string :name, null: false

      t.timestamps
    end
  end
end
