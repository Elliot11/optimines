json.array!(@opt1s) do |opt1|
  json.extract! opt1, :id, :truck, :time, :percentage, :color, :hidden
  json.url opt1_url(opt1, format: :json)
end
