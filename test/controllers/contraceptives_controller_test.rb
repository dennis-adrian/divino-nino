require "test_helper"

class ContraceptivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contraceptive = contraceptives(:one)
  end

  test "should get index" do
    get contraceptives_url
    assert_response :success
  end

  test "should get new" do
    get new_contraceptive_url
    assert_response :success
  end

  test "should create contraceptive" do
    assert_difference("Contraceptive.count") do
      post contraceptives_url, params: { contraceptive: { contraceptive_type_id: @contraceptive.contraceptive_type_id, observations: @contraceptive.observations, patient_id: @contraceptive.patient_id } }
    end

    assert_redirected_to contraceptive_url(Contraceptive.last)
  end

  test "should show contraceptive" do
    get contraceptive_url(@contraceptive)
    assert_response :success
  end

  test "should get edit" do
    get edit_contraceptive_url(@contraceptive)
    assert_response :success
  end

  test "should update contraceptive" do
    patch contraceptive_url(@contraceptive), params: { contraceptive: { contraceptive_type_id: @contraceptive.contraceptive_type_id, observations: @contraceptive.observations, patient_id: @contraceptive.patient_id } }
    assert_redirected_to contraceptive_url(@contraceptive)
  end

  test "should destroy contraceptive" do
    assert_difference("Contraceptive.count", -1) do
      delete contraceptive_url(@contraceptive)
    end

    assert_redirected_to contraceptives_url
  end
end
