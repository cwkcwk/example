class AddLinkToCatalogs < ActiveRecord::Migration
  def change
    add_column :categories, :link, :string
  end
end
