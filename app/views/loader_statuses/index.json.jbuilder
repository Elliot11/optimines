json.array!(@loader_statuses) do |loader_status|
  json.extract! loader_status, :id, :time, :button1, :button2, :button3, :button4, :button5, :button6, :button7, :button8, :button9, :button10, :button11, :button12, :button13, :button14, :button15
  json.url loader_status_url(loader_status, format: :json)
end
