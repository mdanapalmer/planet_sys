class Planet
	attr_accessor :name, :orbitalspd, :orbitalprd, :rotationprd

	@@planets = []

	def initialize(name)
		@name = name
		@@planets << self
	end

	def self.planets
		@@planets
	end 

end

