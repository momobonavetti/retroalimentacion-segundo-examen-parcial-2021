require "test_helper"

class MedicalCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_center = medical_centers(:one)
  end

  test "should get index" do
    get medical_centers_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_center_url
    assert_response :success
  end

  test "should create medical_center" do
    assert_difference('MedicalCenter.count') do
      post medical_centers_url, params: { medical_center: { address: @medical_center.address, description: @medical_center.description, medical_center_type_id: @medical_center.medical_center_type_id, name: @medical_center.name, phone_number: @medical_center.phone_number } }
    end

    assert_redirected_to medical_center_url(MedicalCenter.last)
  end

  test "should show medical_center" do
    get medical_center_url(@medical_center)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_center_url(@medical_center)
    assert_response :success
  end

  test "should update medical_center" do
    patch medical_center_url(@medical_center), params: { medical_center: { address: @medical_center.address, description: @medical_center.description, medical_center_type_id: @medical_center.medical_center_type_id, name: @medical_center.name, phone_number: @medical_center.phone_number } }
    assert_redirected_to medical_center_url(@medical_center)
  end

  test "should destroy medical_center" do
    assert_difference('MedicalCenter.count', -1) do
      delete medical_center_url(@medical_center)
    end

    assert_redirected_to medical_centers_url
  end
end
