class CreateSiteInfos < ActiveRecord::Migration
  def change
    create_table :site_infos do |t|
      t.text :main_text
      t.string :phone
      t.string :fax
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
