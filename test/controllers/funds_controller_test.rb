require 'test_helper'

class FundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fund = funds(:one)
  end

  test "should get index" do
    get funds_url
    assert_response :success
  end

  test "should get new" do
    get new_fund_url
    assert_response :success
  end

  test "should create fund" do
    assert_difference('Fund.count') do
      post funds_url, params: { fund: { description: @fund.description, employee_id: @fund.employee_id, employee_share: @fund.employee_share, fund_type: @fund.fund_type, organization_share: @fund.organization_share, status: @fund.status } }
    end

    assert_redirected_to fund_url(Fund.last)
  end

  test "should show fund" do
    get fund_url(@fund)
    assert_response :success
  end

  test "should get edit" do
    get edit_fund_url(@fund)
    assert_response :success
  end

  test "should update fund" do
    patch fund_url(@fund), params: { fund: { description: @fund.description, employee_id: @fund.employee_id, employee_share: @fund.employee_share, fund_type: @fund.fund_type, organization_share: @fund.organization_share, status: @fund.status } }
    assert_redirected_to fund_url(@fund)
  end

  test "should destroy fund" do
    assert_difference('Fund.count', -1) do
      delete fund_url(@fund)
    end

    assert_redirected_to funds_url
  end
end
