require 'test_helper'

class EventosControllerTest < ActionController::TestCase
  setup do
    @evento = eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evento" do
    assert_difference('Evento.count') do
      post :create, evento: { ano: @evento.ano, ano_realizacao: @evento.ano_realizacao, cidade_evento: @evento.cidade_evento, editora_id: @evento.editora_id, fasciculo: @evento.fasciculo, home_page: @evento.home_page, idioma: @evento.idioma, isbn: @evento.isbn, nome_evento: @evento.nome_evento, pagina_final: @evento.pagina_final, pagina_inicial: @evento.pagina_inicial, pais: @evento.pais, serie: @evento.serie, titulo: @evento.titulo, titulo_anais: @evento.titulo_anais, titulo_ingles: @evento.titulo_ingles, user_id: @evento.user_id, volume: @evento.volume }
    end

    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should show evento" do
    get :show, id: @evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evento
    assert_response :success
  end

  test "should update evento" do
    patch :update, id: @evento, evento: { ano: @evento.ano, ano_realizacao: @evento.ano_realizacao, cidade_evento: @evento.cidade_evento, editora_id: @evento.editora_id, fasciculo: @evento.fasciculo, home_page: @evento.home_page, idioma: @evento.idioma, isbn: @evento.isbn, nome_evento: @evento.nome_evento, pagina_final: @evento.pagina_final, pagina_inicial: @evento.pagina_inicial, pais: @evento.pais, serie: @evento.serie, titulo: @evento.titulo, titulo_anais: @evento.titulo_anais, titulo_ingles: @evento.titulo_ingles, user_id: @evento.user_id, volume: @evento.volume }
    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should destroy evento" do
    assert_difference('Evento.count', -1) do
      delete :destroy, id: @evento
    end

    assert_redirected_to eventos_path
  end
end
