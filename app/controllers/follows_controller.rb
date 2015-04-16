class FollowsController < ApplicationController

  def index
    if current_user
      @follows = current_user.followed_users_quits
    else
      redirect_to users_path
    end
  end

  def create
     followed = User.find(params[:user_id])
     follower = current_user
     Follow.create(followed: followed, follower: follower)
     redirect_to user_path(followed)
  end

  def destroy
     follow = Follow.find(params[:id])
     follow.delete
     redirect_to user_path(follow.followed)
  end
end
