class UsersController < ApplicationController
  before_action :authenticate_owner!, except: [:index]
  before_filter :set_user, only: [:show, :edit, :update]

  def index
    @q = User.ransack(params[:q])
    @people = @q.result(distinct: true)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user.build_profile if @user.profile.nil?
  end

  def update
    if @user.update(user_params)
      redirect_to user_profile_path(@user)
    else
      render 'edit'
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(profile_attributes: [:location, :relationship, :phone, :occupation, :education, :hobbies, :bio, :avatar])
    end

    def authenticate_owner!
      redirect_to root_path unless user_signed_in? && current_user.to_param == params[:id]
    end
end
