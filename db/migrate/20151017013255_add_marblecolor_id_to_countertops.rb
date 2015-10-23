class AddMarblecolorIdToCountertops < ActiveRecord::Migration
  def change
    add_column :countertops, :marblecolor_id, :integer
  end
end
