class Post < ActiveRecord::Base
  belongs_to :user

  CATEGORIES = ["Design", "Mode", "Tendance", "Life-Style", "Tradition", "Gastronomie", "Insolite", "Technologie"]

  validates :category, inclusion: { in: Post::CATEGORIES, allow_nil: false }
  validates :user_id, presence: true
  validates :title, presence: true, uniqueness: true
  validates :content, presence: true

  # validates :tag, length: { minimum: 5 }

  mount_uploader :cover, ImageUploader

end
