class AuthController < ApplicationController
  before_action :sanitize_params, only: %i[create]

  def create
    @current_user = @user.id
    render :create, formats: :json, status: :ok
  end

  def sanitize_params
    username = sanitize params[:username]

    @user = User.find_by(username: username)
    render :not_found, formats: :json, status: :not_found unless @user
  end
end
