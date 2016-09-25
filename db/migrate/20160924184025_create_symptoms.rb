class CreateSymptoms < ActiveRecord::Migration
  def change
   create_table :symptoms do |t|
    t.string :category
    t.string :description
    t.references :solution

    t.timestamps null: false
   end 
  end
end
