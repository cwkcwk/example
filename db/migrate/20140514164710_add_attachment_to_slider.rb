class AddAttachmentToSlider < ActiveRecord::Migration
  def change
    add_attachment :sliders, :image
  end
end
