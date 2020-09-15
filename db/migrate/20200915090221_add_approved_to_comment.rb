class AddApprovedToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :approved, :boolean, default: false

  end
end
