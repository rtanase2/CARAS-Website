class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.string :zip
      t.string :phone
      t.string :age
      t.string :school_name
      t.string :school_phone
      t.string :availability
      t.string :name_org
      t.boolean :signed_participant
      t.string :parent_name
      t.boolean :signed_parent
      t.timestamps null: false
    end
  end
end
