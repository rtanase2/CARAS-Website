class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :business_name
      t.string :owner_name
      t.string :owner_street_address
      t.string :owner_city
      t.string :owner_zip
      t.string :business_home_number
      t.string :cell_number
      t.string :email
      t.time :food_service_time
      t.string :facility_type
      t.string :permit_types
      t.time :food_prep_start
      t.string :name_of_temp_facility
      t.string :person_in_charge
      t.string :person_in_charge_cell
      t.string :covering_type
      t.string :flooring_type
      t.string :wall_type
      t.string :booth_supplier
      t.string :app_sign
      t.date :app_sign_date
      t.string :comm_kitch
      t.string :comm_kitch_address
      t.string :comm_kitch_phone
      t.string :comm_kitch_times_used
      t.boolean :valid_health_permit
      t.string :facility_number
      t.boolean :facility_outside_scc
      t.string :health_permit_link
      t.string :name_permit_holder
      t.string :comm_kitch_signature
      t.date :comm_kitch_sign_date
      t.timestamps null: false
    end
  end
end
