class AddCountertypeIdToCountertops < ActiveRecord::Migration
  def change
    add_column :countertops, :Countertype_Id, :integer
  end
end
