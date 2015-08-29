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
      t.boolean :volunteer_in_school
      t.string :school_name
      t.string :school_phone
      t.date :start_date
      t.boolean :available_days
      t.boolean :available_mornings
      t.boolean :available_evenings
      t.text :availability_by_day
      t.string :type_of_service
      t.string :name_org
      t.string :event
      t.boolean :signed_participant
      t.string :parent_name
      t.boolean :signed_parent
      t.timestamps null: false
    end
  end
end
