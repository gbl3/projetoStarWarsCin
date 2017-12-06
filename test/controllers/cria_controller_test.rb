require 'test_helper'

class CriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crium = cria(:one)
  end

  test "should get index" do
    get cria_url
    assert_response :success
  end

  test "should get new" do
    get new_crium_url
    assert_response :success
  end

  test "should create crium" do
    assert_difference('Crium.count') do
      post cria_url, params: { crium: { id_sabre: @crium.id_sabre, id_usuario: @crium.id_usuario } }
    end

    assert_redirected_to crium_url(Crium.last)
  end

  test "should show crium" do
    get crium_url(@crium)
    assert_response :success
  end

  test "should get edit" do
    get edit_crium_url(@crium)
    assert_response :success
  end

  test "should update crium" do
    patch crium_url(@crium), params: { crium: { id_sabre: @crium.id_sabre, id_usuario: @crium.id_usuario } }
    assert_redirected_to crium_url(@crium)
  end

  test "should destroy crium" do
    assert_difference('Crium.count', -1) do
      delete crium_url(@crium)
    end

    assert_redirected_to cria_url
  end
end
