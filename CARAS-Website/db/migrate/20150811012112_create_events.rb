class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :description
      t.timestamps null: false
    end
  end
end
