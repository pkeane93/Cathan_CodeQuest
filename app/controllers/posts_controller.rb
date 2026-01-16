class PostsController < ApplicationController

  def index
    @posts = Post.all
    @random_posts = Post.order("RANDOM()").limit(3)

  end

  def show
    @posts = Post.all
    @post = Post.find(params[:id])
    @random_posts = Post.order("RANDOM()").limit(3)
  end

end
