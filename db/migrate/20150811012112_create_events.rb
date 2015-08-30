class CreateEvents < ActiveRecord::Migration
  def change
  	#image1 and image2 will be paths to image files
    create_table :events do |t|
      t.text :name
      t.text :description
      t.date :date
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :state
      t.string :path
      t.string :language
      t.timestamps null: false
    end
  end
end
