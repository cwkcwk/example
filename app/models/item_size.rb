class ItemSize < ActiveRecord::Base
  belongs_to :item

  has_many :size_scales, dependent: :destroy

  accepts_nested_attributes_for :size_scales, reject_if: :all_blank
end
