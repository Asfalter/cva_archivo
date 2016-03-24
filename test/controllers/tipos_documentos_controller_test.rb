require 'test_helper'

class TiposDocumentosControllerTest < ActionController::TestCase
  setup do
    @tipos_documento = tipos_documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_documento" do
    assert_difference('TiposDocumento.count') do
      post :create, tipos_documento: { descripcion: @tipos_documento.descripcion }
    end

    assert_redirected_to tipos_documento_path(assigns(:tipos_documento))
  end

  test "should show tipos_documento" do
    get :show, id: @tipos_documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipos_documento
    assert_response :success
  end

  test "should update tipos_documento" do
    patch :update, id: @tipos_documento, tipos_documento: { descripcion: @tipos_documento.descripcion }
    assert_redirected_to tipos_documento_path(assigns(:tipos_documento))
  end

  test "should destroy tipos_documento" do
    assert_difference('TiposDocumento.count', -1) do
      delete :destroy, id: @tipos_documento
    end

    assert_redirected_to tipos_documentos_path
  end
end
