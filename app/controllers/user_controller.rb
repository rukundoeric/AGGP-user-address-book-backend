class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    render :show, formats: :json, status: :ok
  rescue StandardError => e
    @error = e
    render :error, formats: :json, status: :not_found
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @current_user = @user.id
      render :create, formats: :json, status: :created
    else
      @error = @user.errors
      render :error, formats: :json, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :username)
  end
end
