require "test_helper"

class Survery::StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get survery_steps_show_url
    assert_response :success
  end

  test "should get update" do
    get survery_steps_update_url
    assert_response :success
  end
end
