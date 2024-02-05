class PostsController < ApplicationController
  def index
      user_id = params[:id]
      user = User.find(user_id)
      posts = user.posts

      render json: posts
  end

  def create
    @post = @user.posts.build(post_params)
    if @post.save
      redirect_to [@user, @post], notice: 'Post was successfully created.'
    else
      render :new
    end
  end



  def post_params
    params.require(:post).permit(:title, :content)
  end


end
