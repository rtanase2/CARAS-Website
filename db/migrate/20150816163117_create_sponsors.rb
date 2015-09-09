class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :sponsor_name
      t.string :logo_url
      t.timestamps null: false
    end
  end
end
