require 'test_helper'

class FoisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @foi = fois(:one)
  end

  test "should get index" do
    get fois_url
    assert_response :success
  end

  test "should get new" do
    get new_foi_url
    assert_response :success
  end

  test "should create foi" do
    assert_difference('Foi.count') do
      post fois_url, params: { foi: { id_usuario_j: @foi.id_usuario_j, id_usuario_m_sith: @foi.id_usuario_m_sith } }
    end

    assert_redirected_to foi_url(Foi.last)
  end

  test "should show foi" do
    get foi_url(@foi)
    assert_response :success
  end

  test "should get edit" do
    get edit_foi_url(@foi)
    assert_response :success
  end

  test "should update foi" do
    patch foi_url(@foi), params: { foi: { id_usuario_j: @foi.id_usuario_j, id_usuario_m_sith: @foi.id_usuario_m_sith } }
    assert_redirected_to foi_url(@foi)
  end

  test "should destroy foi" do
    assert_difference('Foi.count', -1) do
      delete foi_url(@foi)
    end

    assert_redirected_to fois_url
  end
end
