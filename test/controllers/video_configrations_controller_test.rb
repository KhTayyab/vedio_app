require 'test_helper'

class VideoConfigrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video_configration = video_configrations(:one)
  end

  test "should get index" do
    get video_configrations_url
    assert_response :success
  end

  test "should get new" do
    get new_video_configration_url
    assert_response :success
  end

  test "should create video_configration" do
    assert_difference('VideoConfigration.count') do
      post video_configrations_url, params: { video_configration: { avatar: @video_configration.avatar, product_sku: @video_configration.product_sku } }
    end

    assert_redirected_to video_configration_url(VideoConfigration.last)
  end

  test "should show video_configration" do
    get video_configration_url(@video_configration)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_configration_url(@video_configration)
    assert_response :success
  end

  test "should update video_configration" do
    patch video_configration_url(@video_configration), params: { video_configration: { avatar: @video_configration.avatar, product_sku: @video_configration.product_sku } }
    assert_redirected_to video_configration_url(@video_configration)
  end

  test "should destroy video_configration" do
    assert_difference('VideoConfigration.count', -1) do
      delete video_configration_url(@video_configration)
    end

    assert_redirected_to video_configrations_url
  end
end
