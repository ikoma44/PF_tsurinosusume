class Users::MyPagesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    user.update(user_params)
    #redirect_to users_my_page_path(@user.id)
  end

  def unsubscribe
  end

  def withdraw
  end

end
