class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new
    # This just renders the new.html.erb page

  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
  end
end
