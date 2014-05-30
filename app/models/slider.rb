class Slider < ActiveRecord::Base

  scope :active, -> { where(is_active: true) }

  has_attached_file :image, styles: {
      thumb: '100x100',
      preview: '331x120#',
      main: '992x361#'
  }
end
