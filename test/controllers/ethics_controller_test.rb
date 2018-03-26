require 'test_helper'

class EthicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ethic = ethics(:one)
  end

  test "should get index" do
    get ethics_url
    assert_response :success
  end

  test "should get new" do
    get new_ethic_url
    assert_response :success
  end

  test "should create ethic" do
    assert_difference('Ethic.count') do
      post ethics_url, params: { ethic: { desc: @ethic.desc } }
    end

    assert_redirected_to ethic_url(Ethic.last)
  end

  test "should show ethic" do
    get ethic_url(@ethic)
    assert_response :success
  end

  test "should get edit" do
    get edit_ethic_url(@ethic)
    assert_response :success
  end

  test "should update ethic" do
    patch ethic_url(@ethic), params: { ethic: { desc: @ethic.desc } }
    assert_redirected_to ethic_url(@ethic)
  end

  test "should destroy ethic" do
    assert_difference('Ethic.count', -1) do
      delete ethic_url(@ethic)
    end

    assert_redirected_to ethics_url
  end
end
