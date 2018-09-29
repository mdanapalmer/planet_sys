#(This file deals with welcoming the user and user input)

class PlanetSys::Planetcli

	attr_accessor :name

	def call
		puts "Hello, Stargazer!"
		planet_list
		selector
	end

	 def planet_list
	 	puts "Make your selection"
	 	@planets = PlanetSys::System.all
	 	@planets.each.with_index(1) do |planet, i|
	 		puts "#{i} #{planet.name}" 
	 	end
	 end

	def selector
		puts "Type the number of the stellar object you wish to view (1 - 8), list to see the list, or type exit to leave."
		input = nil
		while input != "exit"
			input = gets.strip.downcase
			if input.to_i > 0 #between?(1..8) work here?
			the_planet = @planets[input.to_i-1]
				puts "Name: #{the_planet.name} - Orbital Speed:#{the_planet.orbitalspd}(km/s) - Orbital Period (Yr): #{the_planet.orbitalprd} - Rotation Period (Days): #{the_planet.rotationprd}"
				puts message
			elsif input == "list"
				planet_list
			elsif input == "exit"
				goodbye
			else 
				puts "I'm sorry, I didn't understand that.  Type 1 - 8 or exit to leave."
			end
		end
	end

	def goodbye
		puts "See you later, space cowboy!"
	end

	def message
		puts "Type the number of the stellar object you wish to view (1 - 8), list to see the list, or type exit to leave."
	end


end

