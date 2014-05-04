json.array!(@goldmeasures) do |goldmeasure|
  json.extract! goldmeasure, :id, :time, :total_shtd
  json.url goldmeasure_url(goldmeasure, format: :json)
end
