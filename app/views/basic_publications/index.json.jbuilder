json.array!(@basic_publications) do |basic_publication|
  json.extract! basic_publication, :id, :profile_id, :title, :year, :country, :language, :webpage, :english_title, :publication_type
  json.url basic_publication_url(basic_publication, format: :json)
end
