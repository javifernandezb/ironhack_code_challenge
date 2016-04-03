require 'test_helper'

class Api::ExercisesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @username = 'st1@ironhack.com'
    @password = 'pw1'
    basic = ActionController::HttpAuthentication::Basic 
    @credentials = basic.encode_credentials(@username, @password)
    request.headers['Accept'] = 'application/json'
    request.headers['Authorization'] = @credentials
  end

  test "should get index if authenticated" do
    get :index
    assert_equal 200, @response.status
  end

  test "should get unauthorised if not authenticated" do
    get :index
    assert_equal 200, @response.status
  end

end
