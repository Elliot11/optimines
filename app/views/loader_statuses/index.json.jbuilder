json.array!(@loader_statuses) do |loader_status|
  json.extract! loader_status, :id, :time, :button-1, :button-2, :button-3, :button-4, :button-5, :button-6, :button-7, :button-8, :button-9, :button-10, :button-11, :button-12, :button-13, :button-14, :button-15
  json.url loader_status_url(loader_status, format: :json)
end
