xml.instruct!
xml.kml(:xmlns => "http://www.opengis.net/kml/2.2") do 
  	@trucks.each do |placemark|
  		xml.comment! "next placemark"
	    xml.Placemark do
	    	xml.name placemark.name
	    	xml.description placemark.description
	    	xml.Point do
	    		xml.coordinates placemark.lat.to_s + "," + placemark.long.to_s

	    	end

	    end
  	end
end