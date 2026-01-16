class PagesController < ApplicationController

  def home
  end

 def about
  @posts  = Post.all
  @random_posts = Post.order("RANDOM()").limit(3)
end

end
