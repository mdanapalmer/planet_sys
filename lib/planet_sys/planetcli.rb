require 'colorize'
class PlanetSys::Planetcli

	def call
		puts "°* ☆~Hello, Stargazer!~☆ *°".bold.cyan
		puts "Type the number of the °˖✧stellar object✧˖° you wish to view (1 - 8).( ´ ▽ ` )ﾉ".blue
		PlanetSys::Scraper.scrape_planets
		planet_list
		selector
	end

	 def planet_list
	 	Planet.planets.each.with_index(1) do |planet, i|
	 		puts "#{i}. #{planet.name}".bold
	 	end
	 end

	def selector
		input = nil
		while input != "exit"
			input = gets.strip
			if input.to_i.between?(1, 8)
			the_planet = Planet.planets[input.to_i-1]
				puts "Name: #{the_planet.name}
Orbital Speed:#{the_planet.orbitalspd}(km/s)
Orbital Period (Yr): #{the_planet.orbitalprd}
Rotation Period (Days): #{the_planet.rotationprd}"
				print message
			elsif input == "list"
				planet_list
				print message	
			elsif input == "exit"
				goodbye
			else 
				puts "I'm sorry, I didn't understand that (ノ﹏ヽ).
Type 1 - 8 or exit to leave.".red
			end
		end
	end

	def goodbye
		puts "See you later, space cowboy! ໒(◕ヮ◕)〜⊹".bold.cyan
	end

	def message
		puts "Type the number of the °˖✧stellar object✧˖° you wish to view (1 - 8).
Type list to see the list.
Type exit to leave.".green
	end
end

