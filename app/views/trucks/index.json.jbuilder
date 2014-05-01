json.array!(@trucks) do |truck|
  json.extract! truck, :id, :name, :description, :lat, :long, :datetimestamp
  json.url truck_url(truck, format: :json)
end
