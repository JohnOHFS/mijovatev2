class AddQuartzToCountertops < ActiveRecord::Migration
  def change
  	add_column :countertops, :quartzcolor_id, :integer

  	create_table :quartzcolors do |t|
      t.string :name
      t.string :url
      t.timestamps null: false
  end
end
end
