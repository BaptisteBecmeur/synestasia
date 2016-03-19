class Hiragana < ActiveRecord::Base
  belongs_to :user
  has_many :favs, dependent: :destroy

  mount_uploader :upload, ImageUploader
  mount_uploader :sound, SoundUploader

  def is_faved_by(user)
    self.favs.where(user: user).take
  end

  # def self.with_bigletter(bigletter)
  #   where(bigletter: bigletter).order(:midletter)
  # end

end
