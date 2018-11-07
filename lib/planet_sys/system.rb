 require 'pry'

 class PlanetSys::System
 	attr_accessor :name, :orbitalprd, :orbitalspd, :rotationprd

 	@@planets = []

 	def self.all
 		self.scrape_planets
 	end

 	def self.scrape_planets
 		planets = []

 		planets << self.scrape_merc
 		planets << self.scrape_venu
 		planets << self.scrape_earth
 		planets << self.scrape_mars
 		planets << self.scrape_jupi
 		planets << self.scrape_satu
 		planets << self.scrape_uran
 		planets << self.scrape_nept

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

 	def self.scrape_venu
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

 	 def self.scrape_jupi
 		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
 	 	planet = self.new
 	 	planet.name = doc.search("td")[32].text
 	 	planet.orbitalprd = doc.search("td")[34].text
 	 	planet.orbitalspd = doc.search("td")[35].text
 	 	planet.rotationprd = doc.search("td")[38].text
 	 	planet
 	 end

 	 def self.scrape_satu
 		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
 	 	planet = self.new
 	 	planet.name = doc.search("td")[40].text
 	 	planet.orbitalprd = doc.search("td")[42].text
 	 	planet.orbitalspd = doc.search("td")[43].text
 	 	planet.rotationprd = doc.search("td")[46].text
 	 	planet
 	 end

 	 def self.scrape_uran
 		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
 	 	planet = self.new
 	 	planet.name = doc.search("td")[48].text
 	 	planet.orbitalprd = doc.search("td")[50].text
 	 	planet.orbitalspd = doc.search("td")[51].text
 	 	planet.rotationprd = doc.search("td")[54].text
 	 	planet
 	 end

 	 def self.scrape_nept
 		doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
 	 	planet = self.new
 	 	planet.name = doc.search("td")[56].text
 	 	planet.orbitalprd = doc.search("td")[58].text
 	 	planet.orbitalspd = doc.search("td")[59].text
 	 	planet.rotationprd = doc.search("td")[62].text
 	 	planet
 	 end

 	  # def self.scrape_all_planets
 	  # 	doc = Nokogiri::HTML(open("https://www.windows2universe.org/our_solar_system/planets_orbits_table.html"))
 	  # 		rows = doc.search("tr")
 	  # 		planets_rows = rows[1..8]
 	  # 		planets_rows.each do |row|
 	  #       row.search("td")[0].text
 	 	# 		binding.pry
 	  # 		end

 	 	# end

 end

