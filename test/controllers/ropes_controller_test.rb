require 'test_helper'

class RopesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rope = ropes(:one)
  end

  test "should get index" do
    get ropes_url
    assert_response :success
  end

  test "should get new" do
    get new_rope_url
    assert_response :success
  end

  test "should create rope" do
    assert_difference('Rope.count') do
      post ropes_url, params: { rope: { Name: @rope.Name, Rope: @rope.Rope } }
    end

    assert_redirected_to rope_url(Rope.last)
  end

  test "should show rope" do
    get rope_url(@rope)
    assert_response :success
  end

  test "should get edit" do
    get edit_rope_url(@rope)
    assert_response :success
  end

  test "should update rope" do
    patch rope_url(@rope), params: { rope: { Name: @rope.Name, Rope: @rope.Rope } }
    assert_redirected_to rope_url(@rope)
  end

  test "should destroy rope" do
    assert_difference('Rope.count', -1) do
      delete rope_url(@rope)
    end

    assert_redirected_to ropes_url
  end
end
