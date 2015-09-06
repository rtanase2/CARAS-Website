class CreateEvents < ActiveRecord::Migration
  def change
  	#image1 and image2 will be paths to image files
    create_table :events do |t|
      t.text :name
      t.text :description
      t.text :subheader
      t.datetime :start_date
      t.datetime :end_date
      t.string :street_address
      t.string :city
      t.string :zip_code
      t.string :state
      t.string :language
      t.string :tabs
      t.string :event_type
      t.timestamps null: false
    end
  end
end
