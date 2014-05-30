class ItemAttachment < ActiveRecord::Base


  belongs_to :item

  has_attached_file :image,
                    styles: {
                        thumb: '100x100',
                        large: '300x500',
                        preview: '300x250'
                    }

end
