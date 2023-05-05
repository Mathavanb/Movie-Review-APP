require "test_helper"

class HomepgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homepg = homepgs(:one)
  end

  test "should get index" do
    get homepgs_url
    assert_response :success
  end

  test "should get new" do
    get new_homepg_url
    assert_response :success
  end

  test "should create homepg" do
    assert_difference('Homepg.count') do
      post homepgs_url, params: { homepg: { description: @homepg.description, movie_name: @homepg.movie_name, release_date: @homepg.release_date } }
    end

    assert_redirected_to homepg_url(Homepg.last)
  end

  test "should show homepg" do
    get homepg_url(@homepg)
    assert_response :success
  end

  test "should get edit" do
    get edit_homepg_url(@homepg)
    assert_response :success
  end

  test "should update homepg" do
    patch homepg_url(@homepg), params: { homepg: { description: @homepg.description, movie_name: @homepg.movie_name, release_date: @homepg.release_date } }
    assert_redirected_to homepg_url(@homepg)
  end

  test "should destroy homepg" do
    assert_difference('Homepg.count', -1) do
      delete homepg_url(@homepg)
    end

    assert_redirected_to homepgs_url
  end
end
