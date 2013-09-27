json.array!(@r_pages) do |r_page|
  json.extract! r_page, :r_language_id, :name, :template, :properties
  json.url r_page_url(r_page, format: :json)
end
