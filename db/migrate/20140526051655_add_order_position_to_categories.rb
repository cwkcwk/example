class AddOrderPositionToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :order_id, :integer, default: 0
  end
end
