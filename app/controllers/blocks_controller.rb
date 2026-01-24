class BlocksController < ApplicationController

  def new
    @block = Block.new()
  end

  def create
    @post = Post.find(params[:post_id])
    @block = @post.blocks.build(block_params)
    @blocks = @post.blocks

    if @block.save
      redirect_to @post
    else
      render "posts/show", status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @block = Block.find(params[:id])
    @block.destroy
    redirect_to edit_post_path, status: :see_other
  end

  private

  def block_params
    params.require(:block).permit(:blocktitle, :blocktext, :image)
  end
end
