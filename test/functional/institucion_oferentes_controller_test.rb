require 'test_helper'

class InstitucionOferentesControllerTest < ActionController::TestCase
  setup do
    @institucion_oferente = institucion_oferentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institucion_oferentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institucion_oferente" do
    assert_difference('InstitucionOferente.count') do
      post :create, institucion_oferente: { calle: @institucion_oferente.calle, depto: @institucion_oferente.depto, email: @institucion_oferente.email, lugar_geografico_id: @institucion_oferente.lugar_geografico_id, nombre: @institucion_oferente.nombre, nro_calle: @institucion_oferente.nro_calle, piso: @institucion_oferente.piso, telefono: @institucion_oferente.telefono }
    end

    assert_redirected_to institucion_oferente_path(assigns(:institucion_oferente))
  end

  test "should show institucion_oferente" do
    get :show, id: @institucion_oferente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institucion_oferente
    assert_response :success
  end

  test "should update institucion_oferente" do
    put :update, id: @institucion_oferente, institucion_oferente: { calle: @institucion_oferente.calle, depto: @institucion_oferente.depto, email: @institucion_oferente.email, lugar_geografico_id: @institucion_oferente.lugar_geografico_id, nombre: @institucion_oferente.nombre, nro_calle: @institucion_oferente.nro_calle, piso: @institucion_oferente.piso, telefono: @institucion_oferente.telefono }
    assert_redirected_to institucion_oferente_path(assigns(:institucion_oferente))
  end

  test "should destroy institucion_oferente" do
    assert_difference('InstitucionOferente.count', -1) do
      delete :destroy, id: @institucion_oferente
    end

    assert_redirected_to institucion_oferentes_path
  end
end
