require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get work_interval:integer" do
    get workouts_work_interval:integer_url
    assert_response :success
  end

  test "should get rest_interval:integer" do
    get workouts_rest_interval:integer_url
    assert_response :success
  end
end
