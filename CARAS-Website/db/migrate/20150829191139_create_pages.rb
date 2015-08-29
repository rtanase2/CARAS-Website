class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
        t.text :innerHTML
        t.string :title
        t.string :lang
        t.text :jumbotronTitle
        t.text :jumbotronDesc
        t.text :jumbotronImagePath
    end
  end
end
