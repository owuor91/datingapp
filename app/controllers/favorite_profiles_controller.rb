class FavoriteProfilesController < ApplicationController
  before_action :set_profile

  def create
    if Favorite.create(favorited: @profile, user: current_user)
      redirect_to @profile, notice: 'profile has been favorited'
    else
      redirect_to @profile, alert: 'Something went wrong...*sad panda*'
    end
  end

  def destroy
    Favorite.where(favorited_id: @profile.id, user_id: current_user.id).first.destroy
    redirect_to @profile, notice: 'profile is no longer in favorites'
  end

  private

  def set_profile
    @profile = Profile.find(params[:profile_id] || params[:id])
  end
end
