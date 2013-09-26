json.array!(@r_links) do |r_link|
  json.extract! r_link, :link, :properties
  json.url r_link_url(r_link, format: :json)
end
