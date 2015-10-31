class CreateCountertops < ActiveRecord::Migration
  def change
    create_table :countertops do |t|
      t.string :counterzip
      t.string :countersize

      t.timestamps null: false
    end
    
  end
end
