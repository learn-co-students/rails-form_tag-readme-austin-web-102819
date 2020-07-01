class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  #action for new_post_path
  def new
  end 
  #action to create new post object with values from params (params written )
  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
      redirect_to posts_path
  end 

end
