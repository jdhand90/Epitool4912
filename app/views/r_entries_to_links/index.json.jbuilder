json.array!(@r_entries_to_links) do |r_entries_to_link|
  json.extract! r_entries_to_link, :r_entry_id, :r_link_id, :properties
  json.url r_entries_to_link_url(r_entries_to_link, format: :json)
end
