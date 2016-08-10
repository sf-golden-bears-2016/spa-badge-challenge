class ApplicationController < ActionController::API
  before_action :setAccess

  private
  def setAccess
    headers['Access-Control-Allow-Origin'] = 'http://localhost:9000'
  end
end
