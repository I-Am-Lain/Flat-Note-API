class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(email: params[:email])

        todos = Todo.all.select{|t| t.user_id === user.id}

        if user && user.authenticate(params[:password])
            render json: { user: {id: user.id, email: user.email}, todos: todos}
        else
            render json: { error: 'Invalid Email/Password' }, status: 401
        end
    end


end
