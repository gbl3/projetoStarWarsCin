require 'test_helper'

class PadawansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @padawan = padawans(:one)
  end

  test "should get index" do
    get padawans_url
    assert_response :success
  end

  test "should get new" do
    get new_padawan_url
    assert_response :success
  end

  test "should create padawan" do
    assert_difference('Padawan.count') do
      post padawans_url, params: { padawan: { cod_padawan: @padawan.cod_padawan, id_usuario_j: @padawan.id_usuario_j, idade: @padawan.idade, nome_pad: @padawan.nome_pad } }
    end

    assert_redirected_to padawan_url(Padawan.last)
  end

  test "should show padawan" do
    get padawan_url(@padawan)
    assert_response :success
  end

  test "should get edit" do
    get edit_padawan_url(@padawan)
    assert_response :success
  end

  test "should update padawan" do
    patch padawan_url(@padawan), params: { padawan: { cod_padawan: @padawan.cod_padawan, id_usuario_j: @padawan.id_usuario_j, idade: @padawan.idade, nome_pad: @padawan.nome_pad } }
    assert_redirected_to padawan_url(@padawan)
  end

  test "should destroy padawan" do
    assert_difference('Padawan.count', -1) do
      delete padawan_url(@padawan)
    end

    assert_redirected_to padawans_url
  end
end
