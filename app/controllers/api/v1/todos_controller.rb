class Api::V1::TodosController < ApplicationController

    def index
        todos = Todo.all
        render json: todos
    end

    def create
        todo = Todo.create(name: params[:name], user_id: params[:user_id] )
        render json: todo
    end

    def destroy

        todo = Todo.find(params[:id])
        todo.destroy()
        render json: { success: true }

    end

end
