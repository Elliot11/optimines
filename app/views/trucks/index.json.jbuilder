json.array!(@trucks) do |truck|
  json.extract! truck, :id, :name, :lat, :long
  json.url truck_url(truck, format: :json)
end
