require 'test_helper'

class EstadosDocumentosControllerTest < ActionController::TestCase
  setup do
    @estados_documento = estados_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estados_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estados_documento" do
    assert_difference('EstadosDocumento.count') do
      post :create, estados_documento: { descripcion: @estados_documento.descripcion }
    end

    assert_redirected_to estados_documento_path(assigns(:estados_documento))
  end

  test "should show estados_documento" do
    get :show, id: @estados_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estados_documento
    assert_response :success
  end

  test "should update estados_documento" do
    patch :update, id: @estados_documento, estados_documento: { descripcion: @estados_documento.descripcion }
    assert_redirected_to estados_documento_path(assigns(:estados_documento))
  end

  test "should destroy estados_documento" do
    assert_difference('EstadosDocumento.count', -1) do
      delete :destroy, id: @estados_documento
    end

    assert_redirected_to estados_documentos_path
  end
end
