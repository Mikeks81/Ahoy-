class ChangeBoatCapicityfromStringtoInteger < ActiveRecord::Migration
  def change
  	change_column :boats, :max_capacity, :integer
  end
end
