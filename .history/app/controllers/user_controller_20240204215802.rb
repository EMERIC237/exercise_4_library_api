class UsersController < ApplicationController
    def index
        users = User.al
    end
end