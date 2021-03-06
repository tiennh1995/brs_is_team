class FollowsController < ApplicationController
  load_resource

  def create
    @user = User.find_by_id params[:followed_id]
    unless current_user.following? @user
      current_user.follow @user
      @active = current_user.active_relationships.find_by followed_id: @user.id
    end
  end

  def destroy
    @active = current_user.active_relationships.build
    @user = @follow.followed
    current_user.unfollow @user
  end
end