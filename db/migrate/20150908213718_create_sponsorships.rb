class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.belongs_to :event, index: true
      t.belongs_to :sponsor, index: true
      t.timestamps null: false
    end
  end
end
