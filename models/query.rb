class Query
	
	def initialize
		countries = ["Brazil","China","South Africa","The Bahamas","Germany"]
		type = ["food","landscape","culture"]
		@combine = countries.sample + " " + type.sample 
	end

	def show
		@combine
	end

end 

