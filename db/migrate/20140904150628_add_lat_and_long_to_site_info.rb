class AddLatAndLongToSiteInfo < ActiveRecord::Migration
  def change
    add_column :site_infos, :latitude, :decimal, precision: 10, scale: 7
    add_column :site_infos, :longitude, :decimal, precision: 10, scale: 7
  end
end
