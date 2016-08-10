require 'test_helper'

class GoaliesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goalie = goalies(:one)
  end

  test "should get index" do
    get goalies_url
    assert_response :success
  end

  test "should get new" do
    get new_goalie_url
    assert_response :success
  end

  test "should create goalie" do
    assert_difference('Goalie.count') do
      post goalies_url, params: { goalie: { goals_against: @goalie.goals_against, references: @goalie.references, references: @goalie.references, time_played: @goalie.time_played } }
    end

    assert_redirected_to goalie_url(Goalie.last)
  end

  test "should show goalie" do
    get goalie_url(@goalie)
    assert_response :success
  end

  test "should get edit" do
    get edit_goalie_url(@goalie)
    assert_response :success
  end

  test "should update goalie" do
    patch goalie_url(@goalie), params: { goalie: { goals_against: @goalie.goals_against, references: @goalie.references, references: @goalie.references, time_played: @goalie.time_played } }
    assert_redirected_to goalie_url(@goalie)
  end

  test "should destroy goalie" do
    assert_difference('Goalie.count', -1) do
      delete goalie_url(@goalie)
    end

    assert_redirected_to goalies_url
  end
end
