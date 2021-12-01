class ApplicationController < ActionController::API
  attr_reader :current_user

  def sanitize(val)
    ActionController::Base.helpers.sanitize(val)
  end
end
