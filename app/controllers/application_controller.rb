class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #@current_uri = request.env['PATH_INFO']
end
