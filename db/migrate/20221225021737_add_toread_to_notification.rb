class AddToreadToNotification < ActiveRecord::Migration[7.0]
  def change
    add_column :notifications, :to_read, :boolean
  end
end
