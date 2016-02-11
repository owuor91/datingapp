class Profile < ActiveRecord::Base
  #before_filter :signed_in_user, only: [:index]
  belongs_to :user

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '100x100>' }, default_url: "/images/avatarph.png"
  validates_attachment :avatar, content_type: { content_type: /\Aimage\/.*\Z/ },
                                size: { in: 0..1.megabytes }

  has_attached_file :photo1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/camplaceholder.png"
  validates_attachment_content_type :photo1, content_type: /\Aimage\/.*\Z/


  has_attached_file :photo2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/camplaceholder.png"
  validates_attachment_content_type :photo2, content_type: /\Aimage\/.*\Z/


  has_attached_file :photo3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/camplaceholder.png"
  validates_attachment_content_type :photo3, content_type: /\Aimage\/.*\Z/


  has_attached_file :photo4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/camplaceholder.png"
  validates_attachment_content_type :photo4, content_type: /\Aimage\/.*\Z/


  has_attached_file :photo5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/camplaceholder.png"
  validates_attachment_content_type :photo5, content_type: /\Aimage\/.*\Z/

end
