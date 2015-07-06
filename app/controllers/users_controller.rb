class UsersController < ApplicationController

	def index 
		@user = User.all # Take all user from database 
	end

	def new
		@user = User.new 
	end

	def show 
		@user = User.find(session[:user_id]) #take one user from database by session ID
	end

	def create
		@user = User.new(user_params) # create a new user with fillable database field
		if @user.save # if user was save in DB
			flash[:success] ="User has been registered" #show a success message
			session[:user_id] = @user.id #create a new session with ID user 
			redirect_to '/'  #redirect to root_path 
		else
			render 'new' #show 'new' view
		end
	end

	private
		def user_params #prepare database field to be filled
			params.require(:user).permit(:name,:firstname,:adress,:phone,:specialty,:password)
		end	
end
