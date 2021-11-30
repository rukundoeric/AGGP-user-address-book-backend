class ApplicationController < ActionController::API
  def sanitize(val)
    ActionController::Base.helpers.sanitize(val)
  end
end
