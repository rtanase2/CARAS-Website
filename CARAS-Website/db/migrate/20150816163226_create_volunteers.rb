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
	  t.boolean :sunday
	  t.boolean :monday
	  t.boolean :tuesday
	  t.boolean :wednesday
	  t.boolean :thursday
	  t.boolean :friday
	  t.boolean :saturday
	  t.time :time_start_sun
	  t.time :time_end_sun
	  t.time :time_start_mon
	  t.time :time_end_mon
	  t.time :time_start_tues
	  t.time :time_end_tues
	  t.time :time_start_wed
	  t.time :time_end_wed
	  t.time :time_start_thurs
	  t.time :time_end_thurs
	  t.time :time_start_fri
	  t.time :time_end_fri
	  t.time :time_start_sat
	  t.time :time_end_sat
	  t.boolean :minor
      t.timestamps null: false
    end
  end
end
