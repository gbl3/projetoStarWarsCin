require 'test_helper'

class TestaETestadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testa_e_testado = testa_e_testados(:one)
  end

  test "should get index" do
    get testa_e_testados_url
    assert_response :success
  end

  test "should get new" do
    get new_testa_e_testado_url
    assert_response :success
  end

  test "should create testa_e_testado" do
    assert_difference('TestaETestado.count') do
      post testa_e_testados_url, params: { testa_e_testado: { cod_padawan: @testa_e_testado.cod_padawan, data_teste: @testa_e_testado.data_teste, id_templo: @testa_e_testado.id_templo, id_usuario_j: @testa_e_testado.id_usuario_j, resultado: @testa_e_testado.resultado } }
    end

    assert_redirected_to testa_e_testado_url(TestaETestado.last)
  end

  test "should show testa_e_testado" do
    get testa_e_testado_url(@testa_e_testado)
    assert_response :success
  end

  test "should get edit" do
    get edit_testa_e_testado_url(@testa_e_testado)
    assert_response :success
  end

  test "should update testa_e_testado" do
    patch testa_e_testado_url(@testa_e_testado), params: { testa_e_testado: { cod_padawan: @testa_e_testado.cod_padawan, data_teste: @testa_e_testado.data_teste, id_templo: @testa_e_testado.id_templo, id_usuario_j: @testa_e_testado.id_usuario_j, resultado: @testa_e_testado.resultado } }
    assert_redirected_to testa_e_testado_url(@testa_e_testado)
  end

  test "should destroy testa_e_testado" do
    assert_difference('TestaETestado.count', -1) do
      delete testa_e_testado_url(@testa_e_testado)
    end

    assert_redirected_to testa_e_testados_url
  end
end
