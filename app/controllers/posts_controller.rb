class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  def edit
  end

  def create
    @post = Post.new post_params
    @post.save
    redirect_to root_path
  end

  def update
    @post.update_attribute post_params
  end

  private
  def set_post
    @post = Post.find params[:id]
  end

  def post_params
    params.require(:post).permit( :title, :description )
  end
end
