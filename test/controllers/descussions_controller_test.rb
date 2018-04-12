require 'test_helper'

class DescussionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descussion = descussions(:one)
  end

  test "should get index" do
    get descussions_url
    assert_response :success
  end

  test "should get new" do
    get new_descussion_url
    assert_response :success
  end

  test "should create descussion" do
    assert_difference('Descussion.count') do
      post descussions_url, params: { descussion: { comment: @descussion.comment, employee_id: @descussion.employee_id } }
    end

    assert_redirected_to descussion_url(Descussion.last)
  end

  test "should show descussion" do
    get descussion_url(@descussion)
    assert_response :success
  end

  test "should get edit" do
    get edit_descussion_url(@descussion)
    assert_response :success
  end

  test "should update descussion" do
    patch descussion_url(@descussion), params: { descussion: { comment: @descussion.comment, employee_id: @descussion.employee_id } }
    assert_redirected_to descussion_url(@descussion)
  end

  test "should destroy descussion" do
    assert_difference('Descussion.count', -1) do
      delete descussion_url(@descussion)
    end

    assert_redirected_to descussions_url
  end
end
