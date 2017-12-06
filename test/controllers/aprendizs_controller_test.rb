require 'test_helper'

class AprendizsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aprendiz = aprendizs(:one)
  end

  test "should get index" do
    get aprendizs_url
    assert_response :success
  end

  test "should get new" do
    get new_aprendiz_url
    assert_response :success
  end

  test "should create aprendiz" do
    assert_difference('Aprendiz.count') do
      post aprendizs_url, params: { aprendiz: { id_usuario_a: @aprendiz.id_usuario_a, id_usuario_m: @aprendiz.id_usuario_m } }
    end

    assert_redirected_to aprendiz_url(Aprendiz.last)
  end

  test "should show aprendiz" do
    get aprendiz_url(@aprendiz)
    assert_response :success
  end

  test "should get edit" do
    get edit_aprendiz_url(@aprendiz)
    assert_response :success
  end

  test "should update aprendiz" do
    patch aprendiz_url(@aprendiz), params: { aprendiz: { id_usuario_a: @aprendiz.id_usuario_a, id_usuario_m: @aprendiz.id_usuario_m } }
    assert_redirected_to aprendiz_url(@aprendiz)
  end

  test "should destroy aprendiz" do
    assert_difference('Aprendiz.count', -1) do
      delete aprendiz_url(@aprendiz)
    end

    assert_redirected_to aprendizs_url
  end
end
