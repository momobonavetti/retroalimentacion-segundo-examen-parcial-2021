require "test_helper"

class MedicalCenterTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_center_type = medical_center_types(:one)
  end

  test "should get index" do
    get medical_center_types_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_center_type_url
    assert_response :success
  end

  test "should create medical_center_type" do
    assert_difference('MedicalCenterType.count') do
      post medical_center_types_url, params: { medical_center_type: { description: @medical_center_type.description, name: @medical_center_type.name } }
    end

    assert_redirected_to medical_center_type_url(MedicalCenterType.last)
  end

  test "should show medical_center_type" do
    get medical_center_type_url(@medical_center_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_center_type_url(@medical_center_type)
    assert_response :success
  end

  test "should update medical_center_type" do
    patch medical_center_type_url(@medical_center_type), params: { medical_center_type: { description: @medical_center_type.description, name: @medical_center_type.name } }
    assert_redirected_to medical_center_type_url(@medical_center_type)
  end

  test "should destroy medical_center_type" do
    assert_difference('MedicalCenterType.count', -1) do
      delete medical_center_type_url(@medical_center_type)
    end

    assert_redirected_to medical_center_types_url
  end
end
