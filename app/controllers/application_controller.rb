class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception


  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:gender])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:from])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:phone])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:introduce])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image])
    # sign_up 변수추가

    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:from])
    devise_parameter_sanitizer.permit(:account_update, keys: [:phone])
    devise_parameter_sanitizer.permit(:account_update, keys: [:introduce])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image])
    # edit 변수추가
  end


  helper_method :mailbox, :conversation

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
end
