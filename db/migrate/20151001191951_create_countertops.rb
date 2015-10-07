class CreateCountertops < ActiveRecord::Migration
  def change
    create_table :countertops do |t|
      t.string :counterzip
      t.string :countersize

      t.timestamps null: false
    end
    add_foreign_key :countertops, :countertypes, column: :Countertype_Id
  end
end
