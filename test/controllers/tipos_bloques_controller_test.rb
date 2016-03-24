require 'test_helper'

class TiposBloquesControllerTest < ActionController::TestCase
  setup do
    @tipos_bloque = tipos_bloques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_bloques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_bloque" do
    assert_difference('TiposBloque.count') do
      post :create, tipos_bloque: { descripcion: @tipos_bloque.descripcion }
    end

    assert_redirected_to tipos_bloque_path(assigns(:tipos_bloque))
  end

  test "should show tipos_bloque" do
    get :show, id: @tipos_bloque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipos_bloque
    assert_response :success
  end

  test "should update tipos_bloque" do
    patch :update, id: @tipos_bloque, tipos_bloque: { descripcion: @tipos_bloque.descripcion }
    assert_redirected_to tipos_bloque_path(assigns(:tipos_bloque))
  end

  test "should destroy tipos_bloque" do
    assert_difference('TiposBloque.count', -1) do
      delete :destroy, id: @tipos_bloque
    end

    assert_redirected_to tipos_bloques_path
  end
end
