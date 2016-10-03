class RegistrationsController < Devise::RegistrationsController
 #Create our own registration controller to override the devise default and allow us add username
  private

  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
  end


end