class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session, if: Proc.new { |c| c.request.format == 'application/json' }

  before_filter :check_auth

  #------------------------------------------------------.
  # The student must be able to authenticate via the API |
  #------------------------------------------------------'
  def check_auth
    authenticate_or_request_with_http_basic do |username, password|
      resource = Student.find_by_email(username)
      if resource.valid_password?(password)
        sign_in :student, resource
        @student = resource
      end
    end
  end
end
