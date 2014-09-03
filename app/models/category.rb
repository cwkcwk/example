class Category < ActiveRecord::Base

  before_save :generate_link

  scope :active, -> { where(is_active: true) }
  scope :ordered, -> {order('order_id desc')}

  has_many :items

  validates :name, presence: true

  has_attached_file :image,
                    styles: {
                        thumb: '100x100',
                        large: '300x300#',
                        preview: '300x450'
                    }

  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  private

  def generate_link
    self.link = Russian.translit(name).gsub(/\s/, '-').downcase
  end

end
