json.array!(@goldpercs) do |goldperc|
  json.extract! goldperc, :id, :time, :under_shtd, :above_shtd
  json.url goldperc_url(goldperc, format: :json)
end
