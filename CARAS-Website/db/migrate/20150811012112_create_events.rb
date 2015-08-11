class CreateEvents < ActiveRecord::Migration
  def change
  	#image1 and image2 will be paths to image files
    create_table :events do |t|
      t.text :name
      t.text :description
      t.date :date
      t.text :street_address
      t.text :city
      t.text :zip_code
      t.text :state
      t.text :image1
      t.text :image2
      t.text :language
      t.timestamps null: false
    end
  end
end
