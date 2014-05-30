class CreateItemSizes < ActiveRecord::Migration
  def change
    create_table :item_sizes do |t|
      t.string :scale
      t.integer :item_id

      t.timestamps
    end
  end
end
