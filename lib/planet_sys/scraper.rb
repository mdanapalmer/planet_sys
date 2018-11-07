class PlanetSys::Scraper

  	 def self.scrape_planets
  	 	doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
  	 	rows = doc.css("tr")
  	 	rows.drop(1).each do |row|
	 	 	cells = row.css("td")
	 		  break if cells[0].text == "Dwarf Planets"
  	 		planet = Planet.new(cells[0].text)
	 	 	  planet.orbitalprd = cells[2].text
  	 		planet.orbitalspd = cells[3].text
  	 		planet.rotationprd = cells[6].text
  			end
  	 	end
end



