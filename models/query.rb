class Query
	
	def initialize
		countries = ["Brazil","China","South Africa","Bahamas","Germany"]
		type = ["food","landscape","culture"]
		@combine = countries.sample + "+" + type.sample 
	end

	def show
		@query = "tags=" + @combine + "&format=json"
		puts @query
	end

end 

