class CreateItemProperties < ActiveRecord::Migration
  def change
    create_table :item_properties do |t|
      t.string :name
      t.string :property
      t.integer :item_id

      t.timestamps
    end
  end
end
