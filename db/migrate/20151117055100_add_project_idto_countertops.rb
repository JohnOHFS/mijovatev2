class AddProjectIdtoCountertops < ActiveRecord::Migration
  def change
  	add_column :countertops, :project_id, :integer
  end
end
