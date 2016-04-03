require 'test_helper'

class Api::ExercisesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test "should get index if authenticated" do
    @username = 'st1@ironhack.com'
    @password = 'pw1'
    basic = ActionController::HttpAuthentication::Basic 
    @credentials = basic.encode_credentials(@username, @password)
    request.headers['Accept'] = 'application/json'
    request.headers['Authorization'] = @credentials

    get :index
    assert_equal 200, @response.status
  end

  test "should get unauthorized if not authenticated" do
    @username = 'st1@ironhack.com'
    @password = 'pw2'
    basic = ActionController::HttpAuthentication::Basic 
    @credentials = basic.encode_credentials(@username, @password)
    request.headers['Accept'] = 'application/json'
    request.headers['Authorization'] = @credentials

    get :index
    assert_equal 401, @response.status
  end

end
