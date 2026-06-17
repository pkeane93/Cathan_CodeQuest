class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :toggle_published]

  def index
    @posts = policy_scope(Post).order(created_at: :desc)
  end

  def show
    @posts = Post.all
    @random_posts = Post.order("RANDOM()").limit(3)
    @block = @post.blocks.build
    authorize @post
  end

  def new
    @post = Post.new()
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    if @post.save
      redirect_to posts_path()
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post.id)
  end

  def destroy
    authorize @post
    @post.destroy
    redirect_to posts_path, status: :see_other
  end

  def toggle_published
    authorize @post
    @post.update(published: !@post.published)
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :image, blocks_attributes: [:id, :blocktitle, :blocktext, :image])
  end

end
