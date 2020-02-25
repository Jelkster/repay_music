class ApplicationController < ActionController::Base
  layout :has_layout?

  def has_layout?
    request.xhr? ? false : 'application'
  end
end
