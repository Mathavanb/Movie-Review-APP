require "test_helper"

class ReviewpgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reviewpg = reviewpgs(:one)
  end

  test "should get index" do
    get reviewpgs_url
    assert_response :success
  end

  test "should get new" do
    get new_reviewpg_url
    assert_response :success
  end

  test "should create reviewpg" do
    assert_difference('Reviewpg.count') do
      post reviewpgs_url, params: { reviewpg: { homepg_id: @reviewpg.homepg_id, rating: @reviewpg.rating, review: @reviewpg.review } }
    end

    assert_redirected_to reviewpg_url(Reviewpg.last)
  end

  test "should show reviewpg" do
    get reviewpg_url(@reviewpg)
    assert_response :success
  end

  test "should get edit" do
    get edit_reviewpg_url(@reviewpg)
    assert_response :success
  end

  test "should update reviewpg" do
    patch reviewpg_url(@reviewpg), params: { reviewpg: { homepg_id: @reviewpg.homepg_id, rating: @reviewpg.rating, review: @reviewpg.review } }
    assert_redirected_to reviewpg_url(@reviewpg)
  end

  test "should destroy reviewpg" do
    assert_difference('Reviewpg.count', -1) do
      delete reviewpg_url(@reviewpg)
    end

    assert_redirected_to reviewpgs_url
  end
end
