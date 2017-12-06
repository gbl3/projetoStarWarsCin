require 'test_helper'

class UtilityDroidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @utility_droid = utility_droids(:one)
  end

  test "should get index" do
    get utility_droids_url
    assert_response :success
  end

  test "should get new" do
    get new_utility_droid_url
    assert_response :success
  end

  test "should create utility_droid" do
    assert_difference('UtilityDroid.count') do
      post utility_droids_url, params: { utility_droid: { especialidade: @utility_droid.especialidade, id_fabricacao: @utility_droid.id_fabricacao } }
    end

    assert_redirected_to utility_droid_url(UtilityDroid.last)
  end

  test "should show utility_droid" do
    get utility_droid_url(@utility_droid)
    assert_response :success
  end

  test "should get edit" do
    get edit_utility_droid_url(@utility_droid)
    assert_response :success
  end

  test "should update utility_droid" do
    patch utility_droid_url(@utility_droid), params: { utility_droid: { especialidade: @utility_droid.especialidade, id_fabricacao: @utility_droid.id_fabricacao } }
    assert_redirected_to utility_droid_url(@utility_droid)
  end

  test "should destroy utility_droid" do
    assert_difference('UtilityDroid.count', -1) do
      delete utility_droid_url(@utility_droid)
    end

    assert_redirected_to utility_droids_url
  end
end
