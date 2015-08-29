class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
        t.text :innerHTML
        t.string :title
        t.string :lang
        t.string :pageType
    end
  end
end
