class SiteInfo < ActiveRecord::Base

  has_attached_file :logo, styles: { thumb: '100x50>', main: '140x35#' }

end
