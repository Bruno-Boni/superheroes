require "test_helper"

class UniversesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universe = universes(:one)
  end

  test "should get index" do
    get universes_url, as: :json
    assert_response :success
  end

  test "should create universe" do
    assert_difference("Universe.count") do
      post universes_url, params: { universe: { name: @universe.name } }, as: :json
    end

    assert_response :created
  end

  test "should show universe" do
    get universe_url(@universe), as: :json
    assert_response :success
  end

  test "should update universe" do
    patch universe_url(@universe), params: { universe: { name: @universe.name } }, as: :json
    assert_response :success
  end

  test "should destroy universe" do
    assert_difference("Universe.count", -1) do
      delete universe_url(@universe), as: :json
    end

    assert_response :no_content
  end
end
