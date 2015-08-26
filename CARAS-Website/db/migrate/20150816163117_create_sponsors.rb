class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :logo_url
      t.timestamps null: false
    end
  end
end
