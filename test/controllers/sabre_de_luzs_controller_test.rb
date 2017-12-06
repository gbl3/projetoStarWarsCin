require 'test_helper'

class SabreDeLuzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sabre_de_luz = sabre_de_luzs(:one)
  end

  test "should get index" do
    get sabre_de_luzs_url
    assert_response :success
  end

  test "should get new" do
    get new_sabre_de_luz_url
    assert_response :success
  end

  test "should create sabre_de_luz" do
    assert_difference('SabreDeLuz.count') do
      post sabre_de_luzs_url, params: { sabre_de_luz: { cor: @sabre_de_luz.cor, cristal: @sabre_de_luz.cristal, data_criacao: @sabre_de_luz.data_criacao, id_sabre: @sabre_de_luz.id_sabre, local_origem: @sabre_de_luz.local_origem } }
    end

    assert_redirected_to sabre_de_luz_url(SabreDeLuz.last)
  end

  test "should show sabre_de_luz" do
    get sabre_de_luz_url(@sabre_de_luz)
    assert_response :success
  end

  test "should get edit" do
    get edit_sabre_de_luz_url(@sabre_de_luz)
    assert_response :success
  end

  test "should update sabre_de_luz" do
    patch sabre_de_luz_url(@sabre_de_luz), params: { sabre_de_luz: { cor: @sabre_de_luz.cor, cristal: @sabre_de_luz.cristal, data_criacao: @sabre_de_luz.data_criacao, id_sabre: @sabre_de_luz.id_sabre, local_origem: @sabre_de_luz.local_origem } }
    assert_redirected_to sabre_de_luz_url(@sabre_de_luz)
  end

  test "should destroy sabre_de_luz" do
    assert_difference('SabreDeLuz.count', -1) do
      delete sabre_de_luz_url(@sabre_de_luz)
    end

    assert_redirected_to sabre_de_luzs_url
  end
end
