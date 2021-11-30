class ApplicationController < ActionController::API
  def sanitize(val)
    ActionController::Base.helpers.sanitize(val)
  end

  attr_reader :current_user

  def set_current_user
    user_id = request.headers[:Authorization].split(' ').last
    @current_user = User.find(user_id)
  end
end
