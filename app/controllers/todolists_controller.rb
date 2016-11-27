class TodolistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @todolists = Todolist.all
  end

  def show
    @list = Todolist.find(params[:id])
    @items = @list.todoitems
  end

  def new
    @list = current_user.todolists.build
  end

  def create
    @list = current_user.todolists.build(todolist_params)
    @list.save
    redirect_to todolists_path
  end

  def destroy
    @list = Todolist.find(params[:id])
    @list.todoitems.destroy_all
    @list.destroy
    redirect_to todolists_path
  end

  def edit
    @list = Todolist.find(params[:id])
  end

  def update
    @list = Todolist.find(params[:id])
    @list.update(todolist_params)
    redirect_to todolists_path
  end


  private

  def todolist_params
    params.require(:todolist).permit(:title)
  end

end

