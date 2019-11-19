require 'test_helper'

class Ticket2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket2 = ticket2s(:one)
  end

  test "should get index" do
    get ticket2s_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket2_url
    assert_response :success
  end

  test "should create ticket2" do
    assert_difference('Ticket2.count') do
      post ticket2s_url, params: { ticket2: { email: @ticket2.email, name: @ticket2.name, price: @ticket2.price, tent: @ticket2.tent } }
    end

    assert_redirected_to ticket2_url(Ticket2.last)
  end

  test "should show ticket2" do
    get ticket2_url(@ticket2)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket2_url(@ticket2)
    assert_response :success
  end

  test "should update ticket2" do
    patch ticket2_url(@ticket2), params: { ticket2: { email: @ticket2.email, name: @ticket2.name, price: @ticket2.price, tent: @ticket2.tent } }
    assert_redirected_to ticket2_url(@ticket2)
  end

  test "should destroy ticket2" do
    assert_difference('Ticket2.count', -1) do
      delete ticket2_url(@ticket2)
    end

    assert_redirected_to ticket2s_url
  end
end
