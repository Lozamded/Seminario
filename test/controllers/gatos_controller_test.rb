require 'test_helper'

class GatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gato = gatos(:one)
  end

  test "should get index" do
    get gatos_url
    assert_response :success
  end

  test "should get new" do
    get new_gato_url
    assert_response :success
  end

  test "should create gato" do
    assert_difference('Gato.count') do
      post gatos_url, params: { gato: { agresividad: @gato.agresividad, chip: @gato.chip, color: @gato.color, comentario: @gato.comentario, edad: @gato.edad, fiicha_id: @gato.fiicha_id, nombre: @gato.nombre, numero_chip: @gato.numero_chip, peso: @gato.peso, porte: @gato.porte, raza: @gato.raza, senas: @gato.senas, sexo: @gato.sexo } }
    end

    assert_redirected_to gato_url(Gato.last)
  end

  test "should show gato" do
    get gato_url(@gato)
    assert_response :success
  end

  test "should get edit" do
    get edit_gato_url(@gato)
    assert_response :success
  end

  test "should update gato" do
    patch gato_url(@gato), params: { gato: { agresividad: @gato.agresividad, chip: @gato.chip, color: @gato.color, comentario: @gato.comentario, edad: @gato.edad, fiicha_id: @gato.fiicha_id, nombre: @gato.nombre, numero_chip: @gato.numero_chip, peso: @gato.peso, porte: @gato.porte, raza: @gato.raza, senas: @gato.senas, sexo: @gato.sexo } }
    assert_redirected_to gato_url(@gato)
  end

  test "should destroy gato" do
    assert_difference('Gato.count', -1) do
      delete gato_url(@gato)
    end

    assert_redirected_to gatos_url
  end
end
