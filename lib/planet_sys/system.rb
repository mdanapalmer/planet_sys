class PlanetSys::System
	attr_accessor :name, :orbitalprd, :orbitalspd, :rotationprd

	@@planets = []

	def self.all
		self.scrape_planets
	end

	def self.scrape_planets
		planets = []

		planets << self.scrape_merc
		planets << self.scrape_ven
		planets << self.scrape_earth
		planets << self.scrape_mars

		planets 
	end

	#find a way to make this more dynamic.  too much repetition

	def self.scrape_merc
		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
		planet = self.new
		planet.name = doc.search("td")[0].text
		planet.orbitalprd = doc.search("td")[2].text
		planet.orbitalspd = doc.search("td")[3].text
		planet.rotationprd = doc.search("td")[6].text
		planet
	end

	def self.scrape_ven
	 	doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
	 	planet = self.new
	 	planet.name = doc.search("td")[8].text
	 	planet.orbitalprd = doc.search("td")[10].text
	 	planet.orbitalspd = doc.search("td")[11].text
	 	planet.rotationprd = doc.search("td")[14].text
	 	planet
	end

	def self.scrape_earth
		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
	 	planet = self.new
	 	planet.name = doc.search("td")[16].text
	 	planet.orbitalprd = doc.search("td")[18].text
	 	planet.orbitalspd = doc.search("td")[19].text
	 	planet.rotationprd = doc.search("td")[22].text
	 	planet
	 end

	 def self.scrape_mars
		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
	 	planet = self.new
	 	planet.name = doc.search("td")[24].text
	 	planet.orbitalprd = doc.search("td")[26].text
	 	planet.orbitalspd = doc.search("td")[27].text
	 	planet.rotationprd = doc.search("td")[30].text
	 	planet
	 end

end

