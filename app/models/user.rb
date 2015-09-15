class User < ActiveRecord::Base

	has_secure_password
	has_one :team
	has_many :players

	validates :email, presence: true, uniqueness: {case_sensitive: false}

end
