class UsersController < ApplicationController
  def show
    @user = User.find params[:id]
    @follow = Follow.where(followed: @user, follower: current_user).first
  end

  def index
    @users = User.all
  end
end
