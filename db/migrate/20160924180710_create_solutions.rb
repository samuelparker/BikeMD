class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.integer :est_time
      t.integer :difficulty_level
      t.text :body
      t.string :picture

      t.timestamps null: false
    end
  end
end


# Tool.create(name: "tire lever")
# Tool.create(name: "small adjustable wrench")
# Tool.create(name: "tire lever")
# Tool.create(name: "phillips head screwdriver")
# Tool.create(name: "flat head screwdriver")
# Tool.create(name: "allen wrench (hex key)")
# Tool.create(name: "chain oil")
# Tool.create(name: "tire pump")
# Tool.create(name: "chain breaker")
# Tool.create(name: "spoke wrench")