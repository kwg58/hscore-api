require 'test_helper'

class GoaliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goaly = goalies(:one)
  end

  test "should get index" do
    get goalies_url
    assert_response :success
  end

  test "should get new" do
    get new_goaly_url
    assert_response :success
  end

  test "should create goaly" do
    assert_difference('Goalie.count') do
      post goalies_url, params: { goaly: { goals_against: @goaly.goals_against, references: @goaly.references, references: @goaly.references, time_played: @goaly.time_played } }
    end

    assert_redirected_to goaly_url(Goalie.last)
  end

  test "should show goaly" do
    get goaly_url(@goaly)
    assert_response :success
  end

  test "should get edit" do
    get edit_goaly_url(@goaly)
    assert_response :success
  end

  test "should update goaly" do
    patch goaly_url(@goaly), params: { goaly: { goals_against: @goaly.goals_against, references: @goaly.references, references: @goaly.references, time_played: @goaly.time_played } }
    assert_redirected_to goaly_url(@goaly)
  end

  test "should destroy goaly" do
    assert_difference('Goalie.count', -1) do
      delete goaly_url(@goaly)
    end

    assert_redirected_to goalies_url
  end
end
