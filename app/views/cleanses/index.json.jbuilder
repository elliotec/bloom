json.array!(@cleanses) do |cleanse|
  json.extract! cleanse, :id, :name, :short_description, :long_description, :price, :ingredients
  json.url cleanse_url(cleanse, format: :json)
end
