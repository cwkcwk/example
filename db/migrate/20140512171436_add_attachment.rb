class AddAttachment < ActiveRecord::Migration
  def change
    add_attachment :item_attachments, :image
  end
end
