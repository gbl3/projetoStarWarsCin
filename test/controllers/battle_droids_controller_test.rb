require 'test_helper'

class BattleDroidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle_droid = battle_droids(:one)
  end

  test "should get index" do
    get battle_droids_url
    assert_response :success
  end

  test "should get new" do
    get new_battle_droid_url
    assert_response :success
  end

  test "should create battle_droid" do
    assert_difference('BattleDroid.count') do
      post battle_droids_url, params: { battle_droid: { id_fabricacao: @battle_droid.id_fabricacao, tipo_arma: @battle_droid.tipo_arma } }
    end

    assert_redirected_to battle_droid_url(BattleDroid.last)
  end

  test "should show battle_droid" do
    get battle_droid_url(@battle_droid)
    assert_response :success
  end

  test "should get edit" do
    get edit_battle_droid_url(@battle_droid)
    assert_response :success
  end

  test "should update battle_droid" do
    patch battle_droid_url(@battle_droid), params: { battle_droid: { id_fabricacao: @battle_droid.id_fabricacao, tipo_arma: @battle_droid.tipo_arma } }
    assert_redirected_to battle_droid_url(@battle_droid)
  end

  test "should destroy battle_droid" do
    assert_difference('BattleDroid.count', -1) do
      delete battle_droid_url(@battle_droid)
    end

    assert_redirected_to battle_droids_url
  end
end
