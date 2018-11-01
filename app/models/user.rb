class User < ApplicationRecord
	has_secure_password
	has_many :session_attendances

	


end
