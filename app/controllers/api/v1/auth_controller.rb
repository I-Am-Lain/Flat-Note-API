class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
            render json: {id: user.id, email: user.email}
        else
            render json: { error: 'Invalid Email/Password' }, status: 401
        end
    end


end
