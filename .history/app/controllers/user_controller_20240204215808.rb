class UsersController < ApplicationController
    def index
        users = User.all
        ren
    end
end