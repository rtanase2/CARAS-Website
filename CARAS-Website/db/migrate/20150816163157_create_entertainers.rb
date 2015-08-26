class CreateEntertainers < ActiveRecord::Migration
  def change
    create_table :entertainers do |t|
      t.string :name
      t.string :description
      t.time :time_playing
      t.timestamps null: false
    end
  end
end
