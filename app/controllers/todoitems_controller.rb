class TodoitemsController < ApplicationController
  def edit

  end

  def new
    #@list = Todolist.find(params[:id])
   # @todo_item = @list.id
    @item = Todoitem.new
  end

  def create
    @item = Todoitem.new(todoitem_params)
    @item.save
    redirect_to todolists_path
  end

  private

  def todoitem_params
    params.require(:todoitem).permit(:step, :description, :todolist_id)
  end

end
