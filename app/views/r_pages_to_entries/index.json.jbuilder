json.array!(@r_pages_to_entries) do |r_pages_to_entry|
  json.extract! r_pages_to_entry, :r_page_id, :r_entry_id, :properties
  json.url r_pages_to_entry_url(r_pages_to_entry, format: :json)
end
