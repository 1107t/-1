require "test_helper"

class TrainingHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get training_histories_create_url
    assert_response :success
  end
end
