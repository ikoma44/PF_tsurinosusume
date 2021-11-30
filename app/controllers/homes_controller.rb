class HomesController < ApplicationController

  def top
    @posts = Post.all
    @posts = Post.page(params[:page]).per(5)
  end

end
