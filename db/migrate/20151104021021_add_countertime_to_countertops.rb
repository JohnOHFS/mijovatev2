class AddCountertimeToCountertops < ActiveRecord::Migration
  def change
  	add_column :countertops, :countertime, :string
  end
end
