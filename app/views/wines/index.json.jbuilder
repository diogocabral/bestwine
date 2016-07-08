json.array!(@wines) do |wine|
  json.extract! wine, :id, :name, :vivino_score, :price, :invoice
  json.url wine_url(wine, format: :json)
end
