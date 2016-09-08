class TodoitemsController < ApplicationController
  before_action :set_todolist
  before_action :set_todoitem,  except: [:create]
  def edit

  end

  def show

  end

  def update

  end

  def destroy
    @item.destroy
    redirect_to @list
  end

  def create
    @item = @list.todoitems.create(todoitem_params)
    redirect_to @list
  end

  def complete
    @item.update_attribute(:completed_at, Time.now)
    redirect_to @list
  end

  private

  def set_todoitem
    @item = @list.todoitems.find(params[:id])
  end

  def set_todolist
    @list = Todolist.find(params[:todolist_id])
  end

  def todoitem_params
    params.require(:todoitem).permit(:step, :description)
  end

end
