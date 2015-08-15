class AddPathToEvent < ActiveRecord::Migration
  def change
    add_column :events, :path, :string
  end
end
