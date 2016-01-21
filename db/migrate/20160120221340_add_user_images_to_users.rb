class AddUserImagesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_images, :string
  end
end
