xml.instruct!
xml.kml(:xmlns => "http://www.opengis.net/kml/2.2") do 
	xml.Document do
	  	@trucks.each do |placemark|
		    xml.Placemark do
		    	xml.name placemark.name
		    	xml.description "hey"
		    	xml.Point do
		    		xml.coordinates placemark.lat.to_s + "," + placemark.long.to_s

		    	end

		    end
	  	end
	end
end