require 'test_helper'

class AssesmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assesment = assesments(:one)
  end

  test "should get index" do
    get assesments_url
    assert_response :success
  end

  test "should get new" do
    get new_assesment_url
    assert_response :success
  end

  test "should create assesment" do
    assert_difference('Assesment.count') do
      post assesments_url, params: { assesment: { department_id: @assesment.department_id, description: @assesment.description, employee_id: @assesment.employee_id, end_date: @assesment.end_date, location: @assesment.location, nature_of_training: @assesment.nature_of_training, start_date: @assesment.start_date, status: @assesment.status, trainer_id: @assesment.trainer_id, training_cost: @assesment.training_cost, training_reason: @assesment.training_reason, training_subject: @assesment.training_subject, training_title: @assesment.training_title, training_type: @assesment.training_type, travel_cost: @assesment.travel_cost } }
    end

    assert_redirected_to assesment_url(Assesment.last)
  end

  test "should show assesment" do
    get assesment_url(@assesment)
    assert_response :success
  end

  test "should get edit" do
    get edit_assesment_url(@assesment)
    assert_response :success
  end

  test "should update assesment" do
    patch assesment_url(@assesment), params: { assesment: { department_id: @assesment.department_id, description: @assesment.description, employee_id: @assesment.employee_id, end_date: @assesment.end_date, location: @assesment.location, nature_of_training: @assesment.nature_of_training, start_date: @assesment.start_date, status: @assesment.status, trainer_id: @assesment.trainer_id, training_cost: @assesment.training_cost, training_reason: @assesment.training_reason, training_subject: @assesment.training_subject, training_title: @assesment.training_title, training_type: @assesment.training_type, travel_cost: @assesment.travel_cost } }
    assert_redirected_to assesment_url(@assesment)
  end

  test "should destroy assesment" do
    assert_difference('Assesment.count', -1) do
      delete assesment_url(@assesment)
    end

    assert_redirected_to assesments_url
  end
end
