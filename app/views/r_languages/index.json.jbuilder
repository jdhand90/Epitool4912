json.array!(@r_languages) do |r_language|
  json.extract! r_language, :language, :properties
  json.url r_language_url(r_language, format: :json)
end
