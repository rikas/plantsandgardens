class CreateGardens < ActiveRecord::Migration[6.1]
  def change
    create_table :gardens do |t|
      t.string :name, null: false
      t.string :picture_url
      t.string :category, null: false

      t.timestamps
    end
  end
end
