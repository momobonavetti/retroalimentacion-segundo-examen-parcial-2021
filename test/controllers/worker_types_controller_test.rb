require "test_helper"

class WorkerTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worker_type = worker_types(:one)
  end

  test "should get index" do
    get worker_types_url
    assert_response :success
  end

  test "should get new" do
    get new_worker_type_url
    assert_response :success
  end

  test "should create worker_type" do
    assert_difference('WorkerType.count') do
      post worker_types_url, params: { worker_type: { description: @worker_type.description, name: @worker_type.name } }
    end

    assert_redirected_to worker_type_url(WorkerType.last)
  end

  test "should show worker_type" do
    get worker_type_url(@worker_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_worker_type_url(@worker_type)
    assert_response :success
  end

  test "should update worker_type" do
    patch worker_type_url(@worker_type), params: { worker_type: { description: @worker_type.description, name: @worker_type.name } }
    assert_redirected_to worker_type_url(@worker_type)
  end

  test "should destroy worker_type" do
    assert_difference('WorkerType.count', -1) do
      delete worker_type_url(@worker_type)
    end

    assert_redirected_to worker_types_url
  end
end
