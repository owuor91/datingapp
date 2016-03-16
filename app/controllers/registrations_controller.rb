class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    new_profile_path
  end

  def after_inactive_sign_up_path_for(resource)
    new_user_session_path
  end

  private

  def sign_up_params
    params.require(:user).permit(:name, :sex, :age, :email, :password)
  end

  def account_update_params
    params.require(:user).permit(:name, :sex, :age, :email, :password, :password_confirmation, :current_password)
  end
end
