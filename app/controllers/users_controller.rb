class UsersController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.new
  end

  def account
    @user = current_user
  end

  def account_edit
    @user = current_user
  end

  def account_update
   if current_user.update_with_password(account_params)
    user = current_user
    sign_out
    sign_in(user)

    redirect_to root_path
   else
    @user = current_user
    render :account_edit, status: :unprocessable_entity
   end
  end

  def profile
  end

  def profile_edit
  end

  def profile_update
    if current_user.update(profile_params)
      redirect_to profile_path
    else
      render :profile_edit
    end
  end

  private

  def account_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :current_password
    )
  end

  def profile_params
    params.require(:user).permit(
      :avatar,
      :name,
      :introduction
    )
  end
end
