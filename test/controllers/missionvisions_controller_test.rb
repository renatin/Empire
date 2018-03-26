require 'test_helper'

class MissionvisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @missionvision = missionvisions(:one)
  end

  test "should get index" do
    get missionvisions_url
    assert_response :success
  end

  test "should get new" do
    get new_missionvision_url
    assert_response :success
  end

  test "should create missionvision" do
    assert_difference('Missionvision.count') do
      post missionvisions_url, params: { missionvision: { descmission: @missionvision.descmission, descvision: @missionvision.descvision, picmission: @missionvision.picmission, picvision: @missionvision.picvision } }
    end

    assert_redirected_to missionvision_url(Missionvision.last)
  end

  test "should show missionvision" do
    get missionvision_url(@missionvision)
    assert_response :success
  end

  test "should get edit" do
    get edit_missionvision_url(@missionvision)
    assert_response :success
  end

  test "should update missionvision" do
    patch missionvision_url(@missionvision), params: { missionvision: { descmission: @missionvision.descmission, descvision: @missionvision.descvision, picmission: @missionvision.picmission, picvision: @missionvision.picvision } }
    assert_redirected_to missionvision_url(@missionvision)
  end

  test "should destroy missionvision" do
    assert_difference('Missionvision.count', -1) do
      delete missionvision_url(@missionvision)
    end

    assert_redirected_to missionvisions_url
  end
end
