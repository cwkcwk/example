class Item < ActiveRecord::Base

  before_save :delete_blank_images, :generate_link

  validates :title, :description, :category_id, presence: true
  validates :title, uniqueness: true

  belongs_to :category

  has_many :item_attachments, dependent: :destroy

  accepts_nested_attributes_for :item_attachments, allow_destroy: true

  has_many :item_properties, dependent: :destroy

  accepts_nested_attributes_for :item_properties, allow_destroy: true

  has_many :item_sizes

  accepts_nested_attributes_for :item_sizes, allow_destroy: true

  private

  def generate_link
    self.link = Russian.translit(title).gsub(/\s/, '-').downcase
  end

  def delete_blank_images
    item_attachments.select { |a| not a.image.present? }.each { |b| b.destroy }
  end

end
