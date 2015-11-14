class PostsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.user_id = @user.id
    @post.save!
    redirect_to @user
  end

  private
  def post_params
    params.require(:post).permit(:title, :comment, :link)
  end

  def set_user
    @user = current_user
  end
end
