require 'test_helper'

class PerrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perro = perros(:one)
  end

  test "should get index" do
    get perros_url
    assert_response :success
  end

  test "should get new" do
    get new_perro_url
    assert_response :success
  end

  test "should create perro" do
    assert_difference('Perro.count') do
      post perros_url, params: { perro: { agresividad: @perro.agresividad, chip: @perro.chip, color: @perro.color, comentario: @perro.comentario, edad: @perro.edad, fiicha_id: @perro.fiicha_id, nombre: @perro.nombre, numero_chip: @perro.numero_chip, peso: @perro.peso, porte: @perro.porte, raza: @perro.raza, senas: @perro.senas, sexo: @perro.sexo } }
    end

    assert_redirected_to perro_url(Perro.last)
  end

  test "should show perro" do
    get perro_url(@perro)
    assert_response :success
  end

  test "should get edit" do
    get edit_perro_url(@perro)
    assert_response :success
  end

  test "should update perro" do
    patch perro_url(@perro), params: { perro: { agresividad: @perro.agresividad, chip: @perro.chip, color: @perro.color, comentario: @perro.comentario, edad: @perro.edad, fiicha_id: @perro.fiicha_id, nombre: @perro.nombre, numero_chip: @perro.numero_chip, peso: @perro.peso, porte: @perro.porte, raza: @perro.raza, senas: @perro.senas, sexo: @perro.sexo } }
    assert_redirected_to perro_url(@perro)
  end

  test "should destroy perro" do
    assert_difference('Perro.count', -1) do
      delete perro_url(@perro)
    end

    assert_redirected_to perros_url
  end
end
