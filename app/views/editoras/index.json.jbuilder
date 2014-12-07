json.array!(@editoras) do |editora|
  json.extract! editora, :id, :nome, :cidade
  json.url editora_url(editora, format: :json)
end
