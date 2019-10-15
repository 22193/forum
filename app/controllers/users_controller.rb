class UsersController < ApplicationController

    def profile
        @user = User.find params[:id]
        unless current_user == @user
            flash[:danger] = 'Mag niet joep'
            redirect_to root_path
        end
    end
end
