class CreateMarblecolors < ActiveRecord::Migration
  def change
    create_table :marblecolors do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
