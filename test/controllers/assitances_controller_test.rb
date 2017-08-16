require 'test_helper'

class AssitancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assitance = assitances(:one)
  end

  test "should get index" do
    get assitances_url
    assert_response :success
  end

  test "should get new" do
    get new_assitance_url
    assert_response :success
  end

  test "should create assitance" do
    assert_difference('Assitance.count') do
      post assitances_url, params: { assitance: { assitance_present: @assitance.assitance_present, student_id: @assitance.student_id } }
    end

    assert_redirected_to assitance_url(Assitance.last)
  end

  test "should show assitance" do
    get assitance_url(@assitance)
    assert_response :success
  end

  test "should get edit" do
    get edit_assitance_url(@assitance)
    assert_response :success
  end

  test "should update assitance" do
    patch assitance_url(@assitance), params: { assitance: { assitance_present: @assitance.assitance_present, student_id: @assitance.student_id } }
    assert_redirected_to assitance_url(@assitance)
  end

  test "should destroy assitance" do
    assert_difference('Assitance.count', -1) do
      delete assitance_url(@assitance)
    end

    assert_redirected_to assitances_url
  end
end
