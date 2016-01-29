class Post < ActiveRecord::Base
  belongs_to :user

  CATEGORIES = ["Japon", "Chine", "Corée du Sud", "Moyen-Orient"]
  TAGS = ["Design", "Mode", "Tendance", "Life-Style", "Tradition", "Gastronomie", "Insolite", "Technologie"]

  validates :tag, inclusion: { in: Post::TAGS, allow_nil: false }
  validates :category, inclusion: { in: Post::CATEGORIES, allow_nil: false }
  validates :user_id, presence: true
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true



  mount_uploader :cover, ImageUploader

end
