json.array!(@elixers) do |elixer|
  json.extract! elixer, :id
  json.url elixer_url(elixer, format: :json)
end
