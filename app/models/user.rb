class User < ActiveRecord::Base

	has_secure_password #create password_digest

	#create rules for user form 
	validates :name, :presence => true
	validates :firstname, :presence => true
	validates :adress, :presence => true
	validates :phone, :presence => true
	validates :password, :presence => true
	validates :specilaty, :presence => true 

end
