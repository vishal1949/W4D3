class SessionsController < ApplicationController

    def new 
        render :new
    end

    def create
        user = User.find_by_credentials(session_params)
    end
     private

     def session_params
         params.require(:user).permit(:user_name, :password)
     end

     def destroy

     end
end
