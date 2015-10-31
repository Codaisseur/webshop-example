json.array!(@luxury_coffees) do |luxury_coffee|
  json.extract! luxury_coffee, :id, :name, :description, :intensity, :price
  json.url luxury_coffee_url(luxury_coffee, format: :json)
end
