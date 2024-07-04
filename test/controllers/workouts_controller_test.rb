require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/workouts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Workout.count, data.length
  end
end
