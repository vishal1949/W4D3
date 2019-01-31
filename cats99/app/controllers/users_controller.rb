class UsersController < ApplicationController

    def index
        @users = User.all
        render :index
    end

    def new
        render :new
    end

    def create
        @user = User.new(user_params)
        @user.save! #dont forget the if block
        redirect_to users_url 
        #use flash errors for the else block
    end

    private

    def user_params
        params.require(:user).permit(:user_name, :password)
    end
    
end
