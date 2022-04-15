require "test_helper"

class ContraceptiveTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contraceptive_type = contraceptive_types(:one)
  end

  test "should get index" do
    get contraceptive_types_url
    assert_response :success
  end

  test "should get new" do
    get new_contraceptive_type_url
    assert_response :success
  end

  test "should create contraceptive_type" do
    assert_difference("ContraceptiveType.count") do
      post contraceptive_types_url, params: { contraceptive_type: { description: @contraceptive_type.description, name: @contraceptive_type.name } }
    end

    assert_redirected_to contraceptive_type_url(ContraceptiveType.last)
  end

  test "should show contraceptive_type" do
    get contraceptive_type_url(@contraceptive_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_contraceptive_type_url(@contraceptive_type)
    assert_response :success
  end

  test "should update contraceptive_type" do
    patch contraceptive_type_url(@contraceptive_type), params: { contraceptive_type: { description: @contraceptive_type.description, name: @contraceptive_type.name } }
    assert_redirected_to contraceptive_type_url(@contraceptive_type)
  end

  test "should destroy contraceptive_type" do
    assert_difference("ContraceptiveType.count", -1) do
      delete contraceptive_type_url(@contraceptive_type)
    end

    assert_redirected_to contraceptive_types_url
  end
end
