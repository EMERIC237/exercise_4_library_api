class PostsController < ApplicationController
  def index
      user_id = params[:id]
      user = User.find(user_id)
      posts = user.posts

      render json: posts
  end
  


  def post_params
    params.require(:post).permit(:title, :content)
  end


end
