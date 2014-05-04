json.array!(@goldpis) do |goldpi|
  json.extract! goldpi, :id, :label, :value, :time
  json.url goldpi_url(goldpi, format: :json)
end
