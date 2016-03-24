require 'test_helper'

class EstadosBloquesControllerTest < ActionController::TestCase
  setup do
    @estados_bloque = estados_bloques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados_bloques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estados_bloque" do
    assert_difference('EstadosBloque.count') do
      post :create, estados_bloque: { descripcion: @estados_bloque.descripcion }
    end

    assert_redirected_to estados_bloque_path(assigns(:estados_bloque))
  end

  test "should show estados_bloque" do
    get :show, id: @estados_bloque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estados_bloque
    assert_response :success
  end

  test "should update estados_bloque" do
    patch :update, id: @estados_bloque, estados_bloque: { descripcion: @estados_bloque.descripcion }
    assert_redirected_to estados_bloque_path(assigns(:estados_bloque))
  end

  test "should destroy estados_bloque" do
    assert_difference('EstadosBloque.count', -1) do
      delete :destroy, id: @estados_bloque
    end

    assert_redirected_to estados_bloques_path
  end
end
