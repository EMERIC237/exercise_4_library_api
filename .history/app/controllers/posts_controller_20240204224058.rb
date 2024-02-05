class PostsController < ApplicationController
  before_action :set_user

  def index
    posts = @user.posts
    render json: posts
  end

  def create
    post = @user.posts.build(post_params)
    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id]) 
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
