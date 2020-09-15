class AddBannedToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :banned, :boolean, default: false
  end
end
