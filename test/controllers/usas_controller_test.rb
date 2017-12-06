require 'test_helper'

class UsasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usa = usas(:one)
  end

  test "should get index" do
    get usas_url
    assert_response :success
  end

  test "should get new" do
    get new_usa_url
    assert_response :success
  end

  test "should create usa" do
    assert_difference('Usa.count') do
      post usas_url, params: { usa: { id_fabricacao: @usa.id_fabricacao, id_usuario: @usa.id_usuario } }
    end

    assert_redirected_to usa_url(Usa.last)
  end

  test "should show usa" do
    get usa_url(@usa)
    assert_response :success
  end

  test "should get edit" do
    get edit_usa_url(@usa)
    assert_response :success
  end

  test "should update usa" do
    patch usa_url(@usa), params: { usa: { id_fabricacao: @usa.id_fabricacao, id_usuario: @usa.id_usuario } }
    assert_redirected_to usa_url(@usa)
  end

  test "should destroy usa" do
    assert_difference('Usa.count', -1) do
      delete usa_url(@usa)
    end

    assert_redirected_to usas_url
  end
end
