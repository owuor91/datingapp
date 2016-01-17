class Profile < ActiveRecord::Base
  #before_filter :signed_in_user, only: [:index]
  belongs_to :user

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }
  validates_attachment :avatar, content_type: { content_type: /\Aimage\/.*\Z/ },
                                size: { in: 0..1.megabytes }

end
