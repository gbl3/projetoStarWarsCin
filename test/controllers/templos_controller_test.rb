require 'test_helper'

class TemplosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @templo = templos(:one)
  end

  test "should get index" do
    get templos_url
    assert_response :success
  end

  test "should get new" do
    get new_templo_url
    assert_response :success
  end

  test "should create templo" do
    assert_difference('Templo.count') do
      post templos_url, params: { templo: { id_templo: @templo.id_templo, nome_templo: @templo.nome_templo, planeta: @templo.planeta } }
    end

    assert_redirected_to templo_url(Templo.last)
  end

  test "should show templo" do
    get templo_url(@templo)
    assert_response :success
  end

  test "should get edit" do
    get edit_templo_url(@templo)
    assert_response :success
  end

  test "should update templo" do
    patch templo_url(@templo), params: { templo: { id_templo: @templo.id_templo, nome_templo: @templo.nome_templo, planeta: @templo.planeta } }
    assert_redirected_to templo_url(@templo)
  end

  test "should destroy templo" do
    assert_difference('Templo.count', -1) do
      delete templo_url(@templo)
    end

    assert_redirected_to templos_url
  end
end
