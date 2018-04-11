require 'test_helper'

class TrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_training_url
    assert_response :success
  end

  test "should create training" do
    assert_difference('Training.count') do
      post trainings_url, params: { training: { description: @training.description, employee_id: @training.employee_id, location: @training.location, nature: @training.nature, organized_by: @training.organized_by, sponsored_by: @training.sponsored_by, title: @training.title, trainer_id: @training.trainer_id, training_from: @training.training_from, training_subject: @training.training_subject, training_to: @training.training_to, training_type: @training.training_type } }
    end

    assert_redirected_to training_url(Training.last)
  end

  test "should show training" do
    get training_url(@training)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_url(@training)
    assert_response :success
  end

  test "should update training" do
    patch training_url(@training), params: { training: { description: @training.description, employee_id: @training.employee_id, location: @training.location, nature: @training.nature, organized_by: @training.organized_by, sponsored_by: @training.sponsored_by, title: @training.title, trainer_id: @training.trainer_id, training_from: @training.training_from, training_subject: @training.training_subject, training_to: @training.training_to, training_type: @training.training_type } }
    assert_redirected_to training_url(@training)
  end

  test "should destroy training" do
    assert_difference('Training.count', -1) do
      delete training_url(@training)
    end

    assert_redirected_to trainings_url
  end
end
