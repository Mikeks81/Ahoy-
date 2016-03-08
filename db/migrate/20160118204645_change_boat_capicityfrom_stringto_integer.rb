class ChangeBoatCapicityfromStringtoInteger < ActiveRecord::Migration
  def change
  	change_column :boats, :max_capacity, 'integer USING CAST("max_capacity" AS integer)'
  end
end
