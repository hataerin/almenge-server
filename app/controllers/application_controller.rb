class ApplicationController < ActionController::API
  before_action :authenticate_user
  attr_reader :current_user

  def authenticate_user
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
