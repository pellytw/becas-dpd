require 'test_helper'

class CursosControllerTest < ActionController::TestCase
  setup do
    @curso = cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curso" do
    assert_difference('Curso.count') do
      post :create, curso: { calle: @curso.calle, capacitadores: @curso.capacitadores, carga_horaria_no_presencial: @curso.carga_horaria_no_presencial, carga_horaria_presencial: @curso.carga_horaria_presencial, depto: @curso.depto, destinatarios: @curso.destinatarios, email: @curso.email, fechas_y_horarios: @curso.fechas_y_horarios, institucion_oferente: @curso.institucion_oferente, localidad_id: @curso.localidad_id, nro: @curso.nro, nro_expediente: @curso.nro_expediente, piso: @curso.piso, resenia: @curso.resenia, tel_contacto: @curso.tel_contacto }
    end

    assert_redirected_to curso_path(assigns(:curso))
  end

  test "should show curso" do
    get :show, id: @curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curso
    assert_response :success
  end

  test "should update curso" do
    put :update, id: @curso, curso: { calle: @curso.calle, capacitadores: @curso.capacitadores, carga_horaria_no_presencial: @curso.carga_horaria_no_presencial, carga_horaria_presencial: @curso.carga_horaria_presencial, depto: @curso.depto, destinatarios: @curso.destinatarios, email: @curso.email, fechas_y_horarios: @curso.fechas_y_horarios, institucion_oferente: @curso.institucion_oferente, localidad_id: @curso.localidad_id, nro: @curso.nro, nro_expediente: @curso.nro_expediente, piso: @curso.piso, resenia: @curso.resenia, tel_contacto: @curso.tel_contacto }
    assert_redirected_to curso_path(assigns(:curso))
  end

  test "should destroy curso" do
    assert_difference('Curso.count', -1) do
      delete :destroy, id: @curso
    end

    assert_redirected_to cursos_path
  end
end
