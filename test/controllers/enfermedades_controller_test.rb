require 'test_helper'

class EnfermedadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enfermedade = enfermedades(:one)
  end

  test "should get index" do
    get enfermedades_url
    assert_response :success
  end

  test "should get new" do
    get new_enfermedade_url
    assert_response :success
  end

  test "should create enfermedade" do
    assert_difference('Enfermedade.count') do
      post enfermedades_url, params: { enfermedade: { nombre: @enfermedade.nombre } }
    end

    assert_redirected_to enfermedade_url(Enfermedade.last)
  end

  test "should show enfermedade" do
    get enfermedade_url(@enfermedade)
    assert_response :success
  end

  test "should get edit" do
    get edit_enfermedade_url(@enfermedade)
    assert_response :success
  end

  test "should update enfermedade" do
    patch enfermedade_url(@enfermedade), params: { enfermedade: { nombre: @enfermedade.nombre } }
    assert_redirected_to enfermedade_url(@enfermedade)
  end

  test "should destroy enfermedade" do
    assert_difference('Enfermedade.count', -1) do
      delete enfermedade_url(@enfermedade)
    end

    assert_redirected_to enfermedades_url
  end
end
