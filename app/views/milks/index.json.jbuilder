json.array!(@milks) do |milk|
  json.extract! milk, :id
  json.url milk_url(milk, format: :json)
end
