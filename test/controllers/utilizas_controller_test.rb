require 'test_helper'

class UtilizasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utiliza = utilizas(:one)
  end

  test "should get index" do
    get utilizas_url
    assert_response :success
  end

  test "should get new" do
    get new_utiliza_url
    assert_response :success
  end

  test "should create utiliza" do
    assert_difference('Utiliza.count') do
      post utilizas_url, params: { utiliza: { id_fabricacao: @utiliza.id_fabricacao, id_usuario: @utiliza.id_usuario } }
    end

    assert_redirected_to utiliza_url(Utiliza.last)
  end

  test "should show utiliza" do
    get utiliza_url(@utiliza)
    assert_response :success
  end

  test "should get edit" do
    get edit_utiliza_url(@utiliza)
    assert_response :success
  end

  test "should update utiliza" do
    patch utiliza_url(@utiliza), params: { utiliza: { id_fabricacao: @utiliza.id_fabricacao, id_usuario: @utiliza.id_usuario } }
    assert_redirected_to utiliza_url(@utiliza)
  end

  test "should destroy utiliza" do
    assert_difference('Utiliza.count', -1) do
      delete utiliza_url(@utiliza)
    end

    assert_redirected_to utilizas_url
  end
end
