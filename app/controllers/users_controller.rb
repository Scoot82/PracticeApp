class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by_id(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @user.save
    redirect_to "http://localhost:3000/users"
  end
  
  def edit
    @user = User.find_by_id(params[:id])
  end
  
  def update
    @user = User.find_by_id(params[:id])
    @user.update_attributes(params[:user])
    @user.save
    redirect_to "http://localhost:3000/users"
  end
  
  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to "http://localhost:3000/users"
  end

end