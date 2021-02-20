class PostsController < ApplicationController
  def index
    @posts = Post.all

    render 'posts/index.jbuilder'
  end

  def create
    # create post for a user
    @post = Post.new(params.permit(:content, :user_id))

    if @post.save
      render 'posts/show.jbuilder'
    else
      render 'posts/error.jbuilder'
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params.permit(:content, :user_id))
      render 'posts/show.jbuilder'
    else
      render 'posts/error.jbuilder'
    end
  end

  def delete
    @post = Post.delete(params[:id])

    render 'posts/show.jbuilder'
  end
end