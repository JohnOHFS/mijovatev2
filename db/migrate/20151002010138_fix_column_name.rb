class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :countertops, :Countertype_Id, :countertype_id
  end
end
