class CreateItemAttachments < ActiveRecord::Migration
  def change
    create_table :item_attachments do |t|
      t.integer :item_id
      t.string :name

      t.timestamps
    end
  end
end
