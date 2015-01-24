class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
    
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      redirect_to user_path(id: @user.id), notice: "Successfully Signed Up"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(user_params)
      redirect_to user_path(id: @user.id), notice: "Successfully Updated"
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    
    if @user.destroy
      redirect_to user_path(id: @user.id), notice: "Successfully Deleted"
    else
      render :index
    end
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
