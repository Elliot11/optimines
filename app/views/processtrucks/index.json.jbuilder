json.array!(@processtrucks) do |processtruck|
  json.extract! processtruck, :id, :time, :truck1, :truck2, :truck3, :truck4, :truck5, :truck6, :truck7, :truck8
  json.url processtruck_url(processtruck, format: :json)
end
