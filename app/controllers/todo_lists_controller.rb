class TodoListsController < ApplicationController
    def show
        @todo_list = TodoList.find(params[:id])
    end

    def new

    end

    def create
        @todo_list = TodoList.new(todo_list_params)

        @todo_list.save
        redirect_to @todo_list
    end

    private
        def todo_list_params
            params.require(:todo_list).permit(:title, :description)
        end
end
