class AddSecondPhoneToSiteInfos < ActiveRecord::Migration
  def change
    add_column :site_infos, :second_phone, :string
  end
end
