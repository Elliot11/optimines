json.array!(@truckmetrics) do |truckmetric|
json.array do
	json.date truckmetric.date
	json.status_category truckmetric.status_category
	json.equipment truckmetric.equipment
	json.duration truckmetric.duration
	end
end