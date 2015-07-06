class SessionsController < ApplicationController
	def new
	end
	
	def create
		@user = User.find_by_login(params[:session][:login])
		if @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			flash[:sucess] = "Your account is registered"
			redirect_to '/'
		else 
			redirect_to 'login'
		end
	end

	def delete 
		session.delete(:user_id)
		flash[:success] = "you have been disconnected"
		redirect_to '/login'
	end
end


end
