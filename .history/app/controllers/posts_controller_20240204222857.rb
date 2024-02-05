class PostsController < ApplicationController
  def index
      user_id = params[:id]
      user = User.find(user_id)
      posts = user.posts

      render json: posts
  end

  def create
    user_id = params[:id]
    user = User.find(user_id)
    post = Post.create(post_params, user)
    render json: p
  end



  def post_params
    params.require(:post).permit(:title, :content)
  end


end
