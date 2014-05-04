json.array!(@opttucks) do |opttuck|
  json.extract! opttuck, :id, :truck, :time, :percentage
  json.url opttuck_url(opttuck, format: :json)
end
