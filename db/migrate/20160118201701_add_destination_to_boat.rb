class AddDestinationToBoat < ActiveRecord::Migration
  def change
    add_column :boats, :destination, :string
  end
end
