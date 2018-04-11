require 'test_helper'

class TrainingEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_event = training_events(:one)
  end

  test "should get index" do
    get training_events_url
    assert_response :success
  end

  test "should get new" do
    get new_training_event_url
    assert_response :success
  end

  test "should create training_event" do
    assert_difference('TrainingEvent.count') do
      post training_events_url, params: { training_event: { employee_id: @training_event.employee_id, location: @training_event.location, nature_of_training: @training_event.nature_of_training, organized_by: @training_event.organized_by, sponsored_by: @training_event.sponsored_by, status: @training_event.status, subject: @training_event.subject, title: @training_event.title, trainer_id: @training_event.trainer_id, training_from: @training_event.training_from, training_to: @training_event.training_to, training_type: @training_event.training_type } }
    end

    assert_redirected_to training_event_url(TrainingEvent.last)
  end

  test "should show training_event" do
    get training_event_url(@training_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_event_url(@training_event)
    assert_response :success
  end

  test "should update training_event" do
    patch training_event_url(@training_event), params: { training_event: { employee_id: @training_event.employee_id, location: @training_event.location, nature_of_training: @training_event.nature_of_training, organized_by: @training_event.organized_by, sponsored_by: @training_event.sponsored_by, status: @training_event.status, subject: @training_event.subject, title: @training_event.title, trainer_id: @training_event.trainer_id, training_from: @training_event.training_from, training_to: @training_event.training_to, training_type: @training_event.training_type } }
    assert_redirected_to training_event_url(@training_event)
  end

  test "should destroy training_event" do
    assert_difference('TrainingEvent.count', -1) do
      delete training_event_url(@training_event)
    end

    assert_redirected_to training_events_url
  end
end
