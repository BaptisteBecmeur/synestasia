class Hiragana < ActiveRecord::Base
  belongs_to :user

  has_many :favs, dependent: :destroy

  mount_uploader :upload, ImageUploader
end
