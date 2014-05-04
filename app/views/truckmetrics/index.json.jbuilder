json.array!(@jsontruckmetrics) do |truckmetric|
json.array do
	json.delays truckmetric.delays
	json.directoperating truckmetric.directoperating
	json.indirectoperating truckmetric.indirectoperating
	json.plannedmaintenance truckmetric.plannedmaintenance
	json.standby truckmetric.plannedmaintenance
	json.unplannedmaintenance truckmetric.unplannedmaintenance
	end

end