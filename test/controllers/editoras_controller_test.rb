require 'test_helper'

class EditorasControllerTest < ActionController::TestCase
  setup do
    @editora = editoras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:editoras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create editora" do
    assert_difference('Editora.count') do
      post :create, editora: { cidade: @editora.cidade, nome: @editora.nome }
    end

    assert_redirected_to editora_path(assigns(:editora))
  end

  test "should show editora" do
    get :show, id: @editora
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @editora
    assert_response :success
  end

  test "should update editora" do
    patch :update, id: @editora, editora: { cidade: @editora.cidade, nome: @editora.nome }
    assert_redirected_to editora_path(assigns(:editora))
  end

  test "should destroy editora" do
    assert_difference('Editora.count', -1) do
      delete :destroy, id: @editora
    end

    assert_redirected_to editoras_path
  end
end
