require 'test_helper'

class JobappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobapp = jobapps(:one)
  end

  test "should get index" do
    get jobapps_url
    assert_response :success
  end

  test "should get new" do
    get new_jobapp_url
    assert_response :success
  end

  test "should create jobapp" do
    assert_difference('Jobapp.count') do
      post jobapps_url, params: { jobapp: { age: @jobapp.age, close_date: @jobapp.close_date, description: @jobapp.description, designation_id: @jobapp.designation_id, experience: @jobapp.experience, job_location: @jobapp.job_location, job_type: @jobapp.job_type, last_date_to_apply: @jobapp.last_date_to_apply, number_of_post: @jobapp.number_of_post, post_date: @jobapp.post_date, salary: @jobapp.salary, short_description: @jobapp.short_description, status: @jobapp.status } }
    end

    assert_redirected_to jobapp_url(Jobapp.last)
  end

  test "should show jobapp" do
    get jobapp_url(@jobapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobapp_url(@jobapp)
    assert_response :success
  end

  test "should update jobapp" do
    patch jobapp_url(@jobapp), params: { jobapp: { age: @jobapp.age, close_date: @jobapp.close_date, description: @jobapp.description, designation_id: @jobapp.designation_id, experience: @jobapp.experience, job_location: @jobapp.job_location, job_type: @jobapp.job_type, last_date_to_apply: @jobapp.last_date_to_apply, number_of_post: @jobapp.number_of_post, post_date: @jobapp.post_date, salary: @jobapp.salary, short_description: @jobapp.short_description, status: @jobapp.status } }
    assert_redirected_to jobapp_url(@jobapp)
  end

  test "should destroy jobapp" do
    assert_difference('Jobapp.count', -1) do
      delete jobapp_url(@jobapp)
    end

    assert_redirected_to jobapps_url
  end
end
