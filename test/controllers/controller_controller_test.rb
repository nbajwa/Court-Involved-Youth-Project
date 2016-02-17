require 'test_helper'

class ControllerControllerTest < ActionController::TestCase
  test "should get FacilityType" do
    get :FacilityType
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
