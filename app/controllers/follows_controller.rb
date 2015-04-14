class FollowsController < ApplicationController
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
