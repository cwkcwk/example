class AddOrderIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :order_id, :integer, default: 0
  end
end
