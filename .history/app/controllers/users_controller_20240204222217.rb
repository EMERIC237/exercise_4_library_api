class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(us)
        render json: user
    end
    def user_params
        params.permit(:name, :email)
    end
end