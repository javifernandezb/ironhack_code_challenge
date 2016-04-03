require 'test_helper'

class Api::ExercisesControllerTest < ActionController::TestCase
  setup do
    @username = 'st1@ironhack.com'
    @password = 'pw1'
    basic = ActionController::HttpAuthentication::Basic 
    @credentials = basic.encode_credentials(@username, @password)
    request.headers['Accept'] = 'application/json'
    # or simpler
    # request.accept = 'application/json'
    request.headers['Authorization'] = @credentials
  end

  test "should get index" do
    get :index
    # body = JSON.parse(response.body)
    # puts body.inspect

    response.should be_success
  end
end
