json.array!(@r_entries) do |r_entry|
  json.extract! r_entry, :r_language_id, :title, :entry, :order, :properties
  json.url r_entry_url(r_entry, format: :json)
end
