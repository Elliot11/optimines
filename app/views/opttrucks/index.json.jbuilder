json.array!(@opttrucks) do |opttruck|
  json.extract! opttruck, :id, :truck, :time, :percentage
  json.url opttruck_url(opttruck, format: :json)
end
