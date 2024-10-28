require "test_helper"

class Survey::StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get survey_steps_show_url
    assert_response :success
  end

  test "should get update" do
    get survey_steps_update_url
    assert_response :success
  end
end
