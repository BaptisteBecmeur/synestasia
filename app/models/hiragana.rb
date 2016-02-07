class Hiragana < ActiveRecord::Base
  belongs_to :user

  has_many :favs, dependent: :destroy

  mount_uploader :upload, ImageUploader

  def is_faved_by(user)
    self.favs.where(user: user).take
  end
end
