json.array!(@subcategories) do |subcategory|
  json.extract! subcategory, :id, :nombre
  json.url subcategory_url(subcategory, format: :json)
end
