class TodolistsController < ApplicationController
  def index
    @todolists = Todolist.all
  end

  def show
    @list = Todolist.find(params[:id])
    @items = @list.todoitems
  end

  def new
    @list = Todolist.new
  end

  def create
    @list = Todolist.new(todolist_params)
    @list.save
    redirect_to todolists_path
  end


  private

  def todolist_params
    params.require(:todolist).permit(:title)
  end

end
