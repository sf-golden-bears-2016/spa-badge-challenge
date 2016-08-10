class ApplicationController < ActionController::API
  # protect_from_forgery
  before_filter :allow_access

  def allow_access
    headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
  end
end
