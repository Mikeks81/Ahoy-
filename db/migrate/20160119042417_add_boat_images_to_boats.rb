class AddBoatImagesToBoats < ActiveRecord::Migration
  def change
    add_column :boats, :boat_images, :string
  end
end
