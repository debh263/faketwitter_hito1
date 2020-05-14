class AddActiveToLike < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :active, :boolean, default: true
  end
end
