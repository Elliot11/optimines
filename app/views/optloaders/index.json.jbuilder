json.array!(@optloaders) do |optloader|
  json.extract! optloader, :id, :time, :truck, :color
  json.url optloader_url(optloader, format: :json)
end
