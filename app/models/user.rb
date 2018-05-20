class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  acts_as_commontable       
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
end
