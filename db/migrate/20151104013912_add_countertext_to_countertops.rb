class AddCountertextToCountertops < ActiveRecord::Migration
  def change
  	add_column :countertops, :countertext, :text
  end
end
