class User < ApplicationRecord
  rolify
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    def admin
		return self.has_role? :admin
	end
	has_one :employee
end
