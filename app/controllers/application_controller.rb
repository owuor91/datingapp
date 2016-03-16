class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index]
  helper_method :mark_favorite

  def mark_favorite
    @favorited = Favorite.where("user_id =? AND favorited_id=?", current_user.id, @profile)

    if @favorited.exists?(favorited_id:@profile)
      true
    end
  end

  private
  def stored_location_for(resource)
    nil
  end


   def after_sign_in_path_for(resource)
     profile_path(current_user.id)
   end
end
