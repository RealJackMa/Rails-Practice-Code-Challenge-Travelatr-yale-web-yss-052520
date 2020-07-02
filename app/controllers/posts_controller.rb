class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def create
  end

  def update
    @post = Post.find(params[:id])
    
    @post.likes += 1

    # byebug

    @post.save

    redirect_to post_path(@post)

  end

end
