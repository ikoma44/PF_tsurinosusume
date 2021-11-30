class Users::PostsController < ApplicationController

  def index
    @posts = Post.all
    @posts = Post.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
    @post.post_files.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      #redirect_to users_post_path(@post.id)
    else
      render :new
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find(params[:id])
    post.update(post_params)
    #redirect_to users_post_path(@post.id)
  end

  def destroy
    @post = Post.find(params[:id])
    post.destroy
    #redirect_to users_path_path
  end

  private
  def post_params
    params.require(:post).permit(:fishing_spot_id, :spot_type, :fish,
    :fishing, :image_id, :title, :text, post_files_other_image: [])
  end

end
