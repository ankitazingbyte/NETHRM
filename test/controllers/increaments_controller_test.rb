require 'test_helper'

class IncreamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @increament = increaments(:one)
  end

  test "should get index" do
    get increaments_url
    assert_response :success
  end

  test "should get new" do
    get new_increament_url
    assert_response :success
  end

  test "should create increament" do
    assert_difference('Increament.count') do
      post increaments_url, params: { increament: { current_salary: @increament.current_salary, designation_id: @increament.designation_id, employee_id: @increament.employee_id, increment_salary: @increament.increment_salary } }
    end

    assert_redirected_to increament_url(Increament.last)
  end

  test "should show increament" do
    get increament_url(@increament)
    assert_response :success
  end

  test "should get edit" do
    get edit_increament_url(@increament)
    assert_response :success
  end

  test "should update increament" do
    patch increament_url(@increament), params: { increament: { current_salary: @increament.current_salary, designation_id: @increament.designation_id, employee_id: @increament.employee_id, increment_salary: @increament.increment_salary } }
    assert_redirected_to increament_url(@increament)
  end

  test "should destroy increament" do
    assert_difference('Increament.count', -1) do
      delete increament_url(@increament)
    end

    assert_redirected_to increaments_url
  end
end
