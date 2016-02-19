class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

   has_one :profile, dependent: :destroy
   accepts_nested_attributes_for :profile

   has_many :favorites
   has_many :favorite_profiles, through: :favorites, source: :favorited, source_type: 'Profile'

   has_many :conversations, :foreign_key => :sender_id



  def username
    self.email.split(/@/).first
  end

  def to_param
    "#{id} #{username}".to_slug.normalize.to_s
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.sex = auth.extra.raw_info.gender
      #user.age = auth.extra.raw_info.birthday
      #user.image = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        user.name = data["name"] if user.name.blank?
        user.sex = data["gender"] if user.sex.blank?
        #user.age = data["birthday"] if user.age.blank?
      end
    end
  end

end
