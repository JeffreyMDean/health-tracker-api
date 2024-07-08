require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/workouts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Workout.count, data.length
  end

  test "create" do
    assert_difference "Workout.count", 1 do
      post "/workouts.json", params: { user_id: 1, date: "2024-07-03", workout_type: "Yoga", duration: 35 }
      assert_response 200
    end
  end
end
