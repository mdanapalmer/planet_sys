 # require 'pry'

 # class PlanetSys::Scraper

 #  def self.scrape_planets
 #  	doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
 #  	rows = doc.search("#content tr")
 #  	@planets = []
 #  	rows.each do |row|
	#  	cells = doc.css("td")
 #  		planet = Planet.new
 #  		planet.name = cells [0].text
	#  	planet.orbitalprd = cells [2].text
 #  		planet.orbitalspd = cells [3].text
 #  		planet.rotationprd = cells [6].text
	#  	@planets << {:name => name, :orbitalprd => orbitalprd, :orbitalspd => orbitalspd, :rotationprd => rotationprd}
 #  		end
	#  	puts @planets
 #  	end


 #  end

