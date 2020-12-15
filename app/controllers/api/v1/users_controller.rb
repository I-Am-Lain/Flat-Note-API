class Api::V1::UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        if user.valid?
            render json: user
        end
        # if user.valid?
        #     flash[:alert] = "SUCCESSFUL EDIT BRO :))))"
        #     redirect_to user_path(user)
        # else
        #     flash[:alert] = "Edit was unsuccessful..."
        #     redirect_to edit_user_path
        # end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy()
        redirect_to '/login'
    end

    private
    
    def user_params
        params.require(:user).permit!
    end
end
