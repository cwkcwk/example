class AddAttachmentToSiteInfo < ActiveRecord::Migration
  def change
    add_attachment :site_infos, :logo
  end
end
