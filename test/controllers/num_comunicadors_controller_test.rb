require 'test_helper'

class NumComunicadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @num_comunicador = num_comunicadors(:one)
  end

  test "should get index" do
    get num_comunicadors_url
    assert_response :success
  end

  test "should get new" do
    get new_num_comunicador_url
    assert_response :success
  end

  test "should create num_comunicador" do
    assert_difference('NumComunicador.count') do
      post num_comunicadors_url, params: { num_comunicador: { id_usuario: @num_comunicador.id_usuario, n_comunicador: @num_comunicador.n_comunicador } }
    end

    assert_redirected_to num_comunicador_url(NumComunicador.last)
  end

  test "should show num_comunicador" do
    get num_comunicador_url(@num_comunicador)
    assert_response :success
  end

  test "should get edit" do
    get edit_num_comunicador_url(@num_comunicador)
    assert_response :success
  end

  test "should update num_comunicador" do
    patch num_comunicador_url(@num_comunicador), params: { num_comunicador: { id_usuario: @num_comunicador.id_usuario, n_comunicador: @num_comunicador.n_comunicador } }
    assert_redirected_to num_comunicador_url(@num_comunicador)
  end

  test "should destroy num_comunicador" do
    assert_difference('NumComunicador.count', -1) do
      delete num_comunicador_url(@num_comunicador)
    end

    assert_redirected_to num_comunicadors_url
  end
end
