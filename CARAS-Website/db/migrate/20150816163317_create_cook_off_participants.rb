class CreateCookOffParticipants < ActiveRecord::Migration
  def change
    create_table :cook_off_participants do |t|
      t.string :region_of_tamale
      t.string :name
      t.text :fillings_ingredients
      t.string :company_org
      t.string :contact_person
      t.string :phone_number
      t.timestamps null: false
    end
  end
end
