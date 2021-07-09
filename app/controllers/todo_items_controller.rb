class TodoItemsController < ApplicationController
    def create
      @todo_list = TodoList.find(params[:todo_item][:todo_list_id]) 
      @todo_item = @todo_list.todo_items.create(todo_item_params)
      redirect_to @todo_list
    end
  
    def complete
      @todo_list = TodoList.find(params[:todo_list])
      @todo_item = @todo_list.todo_items.find(params[:id])
      @todo_item.update(completed_at: Time.now)
      redirect_to @todo_list, notice: "Todo item completed"
    end
  
    def destroy
      @todo_list = TodoList.find(params[:todo_list])
      @todo_item = @todo_list.todo_items.find(params[:id])
      if @todo_item.destroy
        flash[:success] = "Todo List item was deleted."
      else
        flash[:error] = "Todo List item could not be deleted."
      end
  
      redirect_to @todo_list
    end
  
    private
  
    def todo_item_params
      params[:todo_item].permit(:content)
    end
  end
