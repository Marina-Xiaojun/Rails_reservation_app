class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def account
  end

  def account_edit
  end

  def account_update
  if current_user.update_with_password(account_params)
    redirect_to account_path
  else
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
  params.require(:user).permit(:avatar, :name, :introduction)
end
end
