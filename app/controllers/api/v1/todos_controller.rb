class Api::V1::TodosController < ApplicationController

    def index
        todos = Todo.all
        render json: todos
    end

end
