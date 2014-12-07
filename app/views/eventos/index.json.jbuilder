json.array!(@eventos) do |evento|
  json.extract! evento, :id, :titulo, :ano, :pais, :idioma, :home_page, :titulo_ingles, :nome_evento, :cidade_evento, :ano_realizacao, :titulo_anais, :volume, :fasciculo, :serie, :pagina_inicial, :pagina_final, :isbn, :editora_id, :user_id
  json.url evento_url(evento, format: :json)
end
