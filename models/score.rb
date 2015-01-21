class Score
	def initialize
		@countries = {:Brazil => 0,:China => 0, :South_Africa => 0,:Bahamas => 0, :Germany => 0}
	end

	def countries
		@countries
	end

	def china_point
		@countries[:China] = @countries[:China] + 1
	end

	def brazil_point
		@countries[:Brazil] = @countries[:Brazil] + 1
	end

	def south_africa_point
		@countries[:South_Africa] = @countries[:South_Africa] + 1
	end

	def bahamas_point
		@countries[:Bahamas] = @countries[:Bahamas] + 1
	end

	def germany_point
		@countries[:Germany] = @countries[:Germany] + 1
	end


end