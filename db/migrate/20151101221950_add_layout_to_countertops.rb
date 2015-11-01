class AddLayoutToCountertops < ActiveRecord::Migration
  def change
  	add_column :countertops, :layout_id, :integer

  	create_table :layouts do |t|
      t.string :name
      t.string :url
      t.timestamps null: false
  end
end
end
