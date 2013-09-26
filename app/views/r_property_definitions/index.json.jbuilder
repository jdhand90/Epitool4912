json.array!(@r_property_definitions) do |r_property_definition|
  json.extract! r_property_definition, :property, :symbol, :table, :definition, :properties
  json.url r_property_definition_url(r_property_definition, format: :json)
end
