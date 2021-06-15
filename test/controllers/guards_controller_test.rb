require "test_helper"

class GuardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guard = guards(:one)
  end

  test "should get index" do
    get guards_url
    assert_response :success
  end

  test "should get new" do
    get new_guard_url
    assert_response :success
  end

  test "should create guard" do
    assert_difference('Guard.count') do
      post guards_url, params: { guard: { guard_date: @guard.guard_date, medical_center_id: @guard.medical_center_id, worker_id: @guard.worker_id } }
    end

    assert_redirected_to guard_url(Guard.last)
  end

  test "should show guard" do
    get guard_url(@guard)
    assert_response :success
  end

  test "should get edit" do
    get edit_guard_url(@guard)
    assert_response :success
  end

  test "should update guard" do
    patch guard_url(@guard), params: { guard: { guard_date: @guard.guard_date, medical_center_id: @guard.medical_center_id, worker_id: @guard.worker_id } }
    assert_redirected_to guard_url(@guard)
  end

  test "should destroy guard" do
    assert_difference('Guard.count', -1) do
      delete guard_url(@guard)
    end

    assert_redirected_to guards_url
  end
end
