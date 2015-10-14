class AddGranitecolorIdToCountertops < ActiveRecord::Migration
  def change
    add_column :countertops, :granitecolor_id, :integer
  end
end
