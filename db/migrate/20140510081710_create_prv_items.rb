class CreatePrvItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :category_id
      t.text :description

      t.timestamps
    end
  end
end
