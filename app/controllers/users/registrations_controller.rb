class Users::RegistrationsController < Devise::RegistrationsController

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :picture)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :picture, :birth_date, :email, :password, :password_confirmation, :gender, :country, :address, :phone_number, :interests, :language_course)
  end
end
