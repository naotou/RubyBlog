json.array!(@prodects) do |prodect|
  json.extract! prodect, :id, :name, :price, :desc
  json.url prodect_url(prodect, format: :json)
end
