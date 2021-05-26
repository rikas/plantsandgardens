class AddPictureUrlToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :picture_url, :string
  end
end
