require 'test_helper'

class PersonasControllerTest < ActionController::TestCase
  setup do
    @persona = personas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post :create, persona: { apellidos_y_nombres: @persona.apellidos_y_nombres, email: @persona.email, escuela_id: @persona.escuela_id, espacio_curricular: @persona.espacio_curricular, fecha_alta_espacio_curr: @persona.fecha_alta_espacio_curr, fecha_nacimiento: @persona.fecha_nacimiento, localidad_id: @persona.localidad_id, nombre_titulo: @persona.nombre_titulo, situacion_revista_id: @persona.situacion_revista_id, tel_laboral: @persona.tel_laboral, tel_particular: @persona.tel_particular, tipo_documento_id: @persona.tipo_documento_id, titulo_id: @persona.titulo_id }
    end

    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should show persona" do
    get :show, id: @persona
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persona
    assert_response :success
  end

  test "should update persona" do
    put :update, id: @persona, persona: { apellidos_y_nombres: @persona.apellidos_y_nombres, email: @persona.email, escuela_id: @persona.escuela_id, espacio_curricular: @persona.espacio_curricular, fecha_alta_espacio_curr: @persona.fecha_alta_espacio_curr, fecha_nacimiento: @persona.fecha_nacimiento, localidad_id: @persona.localidad_id, nombre_titulo: @persona.nombre_titulo, situacion_revista_id: @persona.situacion_revista_id, tel_laboral: @persona.tel_laboral, tel_particular: @persona.tel_particular, tipo_documento_id: @persona.tipo_documento_id, titulo_id: @persona.titulo_id }
    assert_redirected_to persona_path(assigns(:persona))
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete :destroy, id: @persona
    end

    assert_redirected_to personas_path
  end
end
