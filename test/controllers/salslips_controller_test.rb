require 'test_helper'

class SalslipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salslip = salslips(:one)
  end

  test "should get index" do
    get salslips_url
    assert_response :success
  end

  test "should get new" do
    get new_salslip_url
    assert_response :success
  end

  test "should create salslip" do
    assert_difference('Salslip.count') do
      post salslips_url, params: { salslip: { : @salslip., : @salslip., Leave_deduction: @salslip.Leave_deduction, basic_salary: @salslip.basic_salary, department_id: @salslip.department_id, designation_id: @salslip.designation_id, employee_id: @salslip.employee_id, grand_total: @salslip.grand_total, increment_id: @salslip.increment_id, payment_by: @salslip.payment_by, provident_fund: @salslip.provident_fund } }
    end

    assert_redirected_to salslip_url(Salslip.last)
  end

  test "should show salslip" do
    get salslip_url(@salslip)
    assert_response :success
  end

  test "should get edit" do
    get edit_salslip_url(@salslip)
    assert_response :success
  end

  test "should update salslip" do
    patch salslip_url(@salslip), params: { salslip: { : @salslip., : @salslip., Leave_deduction: @salslip.Leave_deduction, basic_salary: @salslip.basic_salary, department_id: @salslip.department_id, designation_id: @salslip.designation_id, employee_id: @salslip.employee_id, grand_total: @salslip.grand_total, increment_id: @salslip.increment_id, payment_by: @salslip.payment_by, provident_fund: @salslip.provident_fund } }
    assert_redirected_to salslip_url(@salslip)
  end

  test "should destroy salslip" do
    assert_difference('Salslip.count', -1) do
      delete salslip_url(@salslip)
    end

    assert_redirected_to salslips_url
  end
end
