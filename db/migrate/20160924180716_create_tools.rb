class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.references :solution

      t.timestamps null: false
    end
  end
end
