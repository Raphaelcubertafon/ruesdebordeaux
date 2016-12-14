require 'test_helper'

class RuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rue = rues(:one)
  end

  test "should get index" do
    get rues_url
    assert_response :success
  end

  test "should get new" do
    get new_rue_url
    assert_response :success
  end

  test "should create rue" do
    assert_difference('Rue.count') do
      post rues_url, params: { rue: { histoire: @rue.histoire, rue: @rue.rue } }
    end

    assert_redirected_to rue_url(Rue.last)
  end

  test "should show rue" do
    get rue_url(@rue)
    assert_response :success
  end

  test "should get edit" do
    get edit_rue_url(@rue)
    assert_response :success
  end

  test "should update rue" do
    patch rue_url(@rue), params: { rue: { histoire: @rue.histoire, rue: @rue.rue } }
    assert_redirected_to rue_url(@rue)
  end

  test "should destroy rue" do
    assert_difference('Rue.count', -1) do
      delete rue_url(@rue)
    end

    assert_redirected_to rues_url
  end
end
