class User < ApplicationRecord
	has_secure_password
	has_many :session_attendances
#	mount_uploader :user_photo, UserPhotoUploader

end

#class User < ActiveRecord::Base
#		mount_uploader :user_photo, UserPhotoUploader
#	end
