class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :vendor
      t.text :cargo
      t.integer :containers
      t.decimal :price
      t.string :origin_location
      t.string :destination
      t.datetime :date 
      t.references :boat, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
