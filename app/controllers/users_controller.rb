class UsersController < ApplicationController
    before_action :authenticate_user!

    def index
      # @users = User.all
      @users = User.includes(:profile)
    end

    # GET to /users/:id
    def show
      @user = User.find( params[:id] )
    end
end