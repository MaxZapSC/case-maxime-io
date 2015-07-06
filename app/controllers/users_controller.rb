class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def show 
		@user = User.find(session[:user_id])

	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] ="okokokokok"
			session[:user_id] = @user.id
			redirect_to '/login'  
		else
			render 'new'
		end
	end

	private
		def user_params
			params.require(:user).permit(:name,:firstname,:adress,:phone,:specialty,:password)
		end
		
end
