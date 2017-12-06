require 'test_helper'

class UsuarioDaForcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usuario_da_forca = usuario_da_forcas(:one)
  end

  test "should get index" do
    get usuario_da_forcas_url
    assert_response :success
  end

  test "should get new" do
    get new_usuario_da_forca_url
    assert_response :success
  end

  test "should create usuario_da_forca" do
    assert_difference('UsuarioDaForca.count') do
      post usuario_da_forcas_url, params: { usuario_da_forca: { data_nas: @usuario_da_forca.data_nas, id_sabre: @usuario_da_forca.id_sabre, id_usuario: @usuario_da_forca.id_usuario, nome_usuario: @usuario_da_forca.nome_usuario, planeta_origem: @usuario_da_forca.planeta_origem } }
    end

    assert_redirected_to usuario_da_forca_url(UsuarioDaForca.last)
  end

  test "should show usuario_da_forca" do
    get usuario_da_forca_url(@usuario_da_forca)
    assert_response :success
  end

  test "should get edit" do
    get edit_usuario_da_forca_url(@usuario_da_forca)
    assert_response :success
  end

  test "should update usuario_da_forca" do
    patch usuario_da_forca_url(@usuario_da_forca), params: { usuario_da_forca: { data_nas: @usuario_da_forca.data_nas, id_sabre: @usuario_da_forca.id_sabre, id_usuario: @usuario_da_forca.id_usuario, nome_usuario: @usuario_da_forca.nome_usuario, planeta_origem: @usuario_da_forca.planeta_origem } }
    assert_redirected_to usuario_da_forca_url(@usuario_da_forca)
  end

  test "should destroy usuario_da_forca" do
    assert_difference('UsuarioDaForca.count', -1) do
      delete usuario_da_forca_url(@usuario_da_forca)
    end

    assert_redirected_to usuario_da_forcas_url
  end
end
