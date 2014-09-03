class ItemAttachment < ActiveRecord::Base


  belongs_to :item

  has_attached_file :image,
                    styles: {
                        thumb: '100x100',
                        large: '663x939',
                        preview: '440x'
                    }

end
