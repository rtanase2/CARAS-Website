class RemoveImagesFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :image1, :string
    remove_column :events, :image2, :string
  end
end
