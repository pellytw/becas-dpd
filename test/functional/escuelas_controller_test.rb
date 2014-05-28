require 'test_helper'

class EscuelasControllerTest < ActionController::TestCase
  setup do
    @escuela = escuelas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:escuelas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create escuela" do
    assert_difference('Escuela.count') do
      post :create, escuela: { localidad: @escuela.localidad, nombre: @escuela.nombre, nro: @escuela.nro, region: @escuela.region }
    end

    assert_redirected_to escuela_path(assigns(:escuela))
  end

  test "should show escuela" do
    get :show, id: @escuela
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @escuela
    assert_response :success
  end

  test "should update escuela" do
    put :update, id: @escuela, escuela: { localidad: @escuela.localidad, nombre: @escuela.nombre, nro: @escuela.nro, region: @escuela.region }
    assert_redirected_to escuela_path(assigns(:escuela))
  end

  test "should destroy escuela" do
    assert_difference('Escuela.count', -1) do
      delete :destroy, id: @escuela
    end

    assert_redirected_to escuelas_path
  end
end
