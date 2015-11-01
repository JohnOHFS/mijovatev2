class AddSoapstoneToCountertops < ActiveRecord::Migration
  def change
  	add_column :countertops, :soapstonecolor_id, :integer

  	create_table :soapstonecolors do |t|
      t.string :name
      t.string :url
      t.timestamps null: false
  end
end
end
