class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook] #, :google_oauth2

  has_and_belongs_to_many :oauth_credentials

  has_many :posts, dependent: :destroy
  has_many :hiraganas, dependent: :destroy
  has_many :favs, dependent: :destroy
  has_many :generators, dependent: :destroy

  #after_create :subscribe_to_newsletter

 def self.find_for_facebook_oauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.picture = auth.info.image
      user.token = auth.credentials.token
      user.token_expiry = Time.at(auth.credentials.expires_at)
    end
  end

  def admin?
    ["bat@synestasia.co", "aurelie@synestasia.co"].include? self.email
  end

  def self.find_for_google_oauth2(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.first_name = auth.info.name
      user.last_name = auth.info.nickname
      user.picture = auth.info.image
      user.token = auth.credentials.token
    end
  end

  #validates :first_name, presence: true

  #private

  #def subscribe_to_newsletter
    #SubscribeToNewsletter.new(self).run
  #end
end
