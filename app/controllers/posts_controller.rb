class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = policy_scope(Post)
  end

  def show
    @posts = Post.all
    @random_posts = Post.order("RANDOM()").limit(3)
    authorize @post
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
  end

end
