class CreateCarShowParticipants < ActiveRecord::Migration
  def change
    create_table :car_show_participants do |t|
      t.boolean :paid
      t.string :name
      t.string :address
      t.string :email
      t.string :year
      t.string :make
      t.boolean :signed
      t.timestamp :submission_time
      t.timestamps null: false
    end
  end
end
