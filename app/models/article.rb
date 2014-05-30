class Article < ActiveRecord::Base

  before_save :generate_link

  validates :title, :preview, :body, presence: true
  validates :title, uniqueness: true

  scope :published, -> { where(published: true) }

  has_attached_file :image,
                    styles: {
                        thumb: '100x100#',
                        large: '300x300#',
                        main: '200x200#'
                    }

  private

  def generate_link
    self.link = Russian.translit(title).gsub(/\s/, '-').downcase
  end
end
