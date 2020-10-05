class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  include ProfilePictureUploader::Attachment(:profil_picture)
  include CoverPictureUploader::Attachment(:cover_picture)

  validates :email, presence: true
  validates :nickname, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :birthdate, presence: true
  validates :country, presence: true
end
