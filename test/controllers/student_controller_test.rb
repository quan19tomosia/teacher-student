require "test_helper"

class StudentControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get student_send_url
    assert_response :success
  end
end
