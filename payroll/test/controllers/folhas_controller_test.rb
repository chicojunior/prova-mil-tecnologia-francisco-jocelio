require 'test_helper'

class FolhasControllerTest < ActionController::TestCase
  setup do
    @folha = folhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folha" do
    assert_difference('Folha.count') do
      post :create, folha: { funcionarios: @folha.funcionarios, nome: @folha.nome, verba: @folha.verba }
    end

    assert_redirected_to folha_path(assigns(:folha))
  end

  test "should show folha" do
    get :show, id: @folha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @folha
    assert_response :success
  end

  test "should update folha" do
    patch :update, id: @folha, folha: { funcionarios: @folha.funcionarios, nome: @folha.nome, verba: @folha.verba }
    assert_redirected_to folha_path(assigns(:folha))
  end

  test "should destroy folha" do
    assert_difference('Folha.count', -1) do
      delete :destroy, id: @folha
    end

    assert_redirected_to folhas_path
  end
end
