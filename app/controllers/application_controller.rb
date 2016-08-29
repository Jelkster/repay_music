class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :has_layout?

  def has_layout?
    request.xhr? ? false : 'application'
  end
end
