require 'test_helper'

class SithsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sith = siths(:one)
  end

  test "should get index" do
    get siths_url
    assert_response :success
  end

  test "should get new" do
    get new_sith_url
    assert_response :success
  end

  test "should create sith" do
    assert_difference('Sith.count') do
      post siths_url, params: { sith: { funcao: @sith.funcao, id_usuario: @sith.id_usuario } }
    end

    assert_redirected_to sith_url(Sith.last)
  end

  test "should show sith" do
    get sith_url(@sith)
    assert_response :success
  end

  test "should get edit" do
    get edit_sith_url(@sith)
    assert_response :success
  end

  test "should update sith" do
    patch sith_url(@sith), params: { sith: { funcao: @sith.funcao, id_usuario: @sith.id_usuario } }
    assert_redirected_to sith_url(@sith)
  end

  test "should destroy sith" do
    assert_difference('Sith.count', -1) do
      delete sith_url(@sith)
    end

    assert_redirected_to siths_url
  end
end
