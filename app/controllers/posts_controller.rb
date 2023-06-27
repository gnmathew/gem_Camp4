class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    debugger
    post = Post.new(params[:post])
      if post.save
        redirect_to posts_path
      end
  end

end
