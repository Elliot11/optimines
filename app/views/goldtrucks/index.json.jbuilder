json.array!(@goldtrucks) do |goldtruck|
  json.extract! goldtruck, :id, :time, :t1, :t2, :t3, :t4, :t5, :t6, :t7, :t8, :t9, :t10, :t11, :t12, :t13, :t14, :t15, :t16, :t17, :t18, :t19, :t20, :t21, :t22, :t23, :t24, :t25
  json.url goldtruck_url(goldtruck, format: :json)
end
