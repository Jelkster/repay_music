class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :has_layout?

  def has_layout?
    request.xhr? ? false : 'application'
  end

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    return unless current_user && !current_user.email_verified?
    redirect_to finish_signup_path(current_user)
  end
end
