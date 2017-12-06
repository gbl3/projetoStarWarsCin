require 'test_helper'

class JedisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jedi = jedis(:one)
  end

  test "should get index" do
    get jedis_url
    assert_response :success
  end

  test "should get new" do
    get new_jedi_url
    assert_response :success
  end

  test "should create jedi" do
    assert_difference('Jedi.count') do
      post jedis_url, params: { jedi: { classe_jedi: @jedi.classe_jedi, id_usuario_j: @jedi.id_usuario_j, idade: @jedi.idade, ordem: @jedi.ordem } }
    end

    assert_redirected_to jedi_url(Jedi.last)
  end

  test "should show jedi" do
    get jedi_url(@jedi)
    assert_response :success
  end

  test "should get edit" do
    get edit_jedi_url(@jedi)
    assert_response :success
  end

  test "should update jedi" do
    patch jedi_url(@jedi), params: { jedi: { classe_jedi: @jedi.classe_jedi, id_usuario_j: @jedi.id_usuario_j, idade: @jedi.idade, ordem: @jedi.ordem } }
    assert_redirected_to jedi_url(@jedi)
  end

  test "should destroy jedi" do
    assert_difference('Jedi.count', -1) do
      delete jedi_url(@jedi)
    end

    assert_redirected_to jedis_url
  end
end
