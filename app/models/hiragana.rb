class Hiragana < ActiveRecord::Base
  belongs_to :user


  mount_uploader :upload, ImageUploader
end
