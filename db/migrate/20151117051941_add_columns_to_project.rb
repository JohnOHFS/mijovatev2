class AddColumnsToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :name, :string
  	add_column :projects, :zipcode, :string
  	add_column :projects, :timeframe, :string
  	add_column :projects, :supplier, :string
  end
end
