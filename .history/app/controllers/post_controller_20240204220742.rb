class PostsController < ApplicationController
  def index
      user_id = params[:id]
      user = User.find(user_id)
      posts 
  end

end