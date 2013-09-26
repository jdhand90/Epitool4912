json.array!(@r_contacts) do |r_contact|
  json.extract! r_contact, :name, :profession, :email, :properties
  json.url r_contact_url(r_contact, format: :json)
end
