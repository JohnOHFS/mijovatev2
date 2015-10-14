class CreateGranitecolors < ActiveRecord::Migration
  def change
    create_table :granitecolors do |t|
      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
