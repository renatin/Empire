require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get ethic" do
    get pages_ethic_url
    assert_response :success
  end

  test "should get corporateteam" do
    get pages_corporateteam_url
    assert_response :success
  end

  test "should get trading" do
    get pages_trading_url
    assert_response :success
  end

  test "should get membership" do
    get pages_membership_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

  test "should get missionvision" do
    get pages_missionvision_url
    assert_response :success
  end

  test "should get report" do
    get pages_report_url
    assert_response :success
  end

  test "should get freeresource" do
    get pages_freeresource_url
    assert_response :success
  end

  test "should get prremiunreourse" do
    get pages_prremiunreourse_url
    assert_response :success
  end

end
