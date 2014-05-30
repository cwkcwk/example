class CreateSizeScales < ActiveRecord::Migration
  def change
    create_table :size_scales do |t|
      t.string :scale
      t.integer :item_size_id

      t.timestamps
    end
  end
end
