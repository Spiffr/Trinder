class Query
	
	def initialize
		countries = ["Brazil","China","South_Africa","Bahamas","Germany"]
		type = ["food","landscape","culture"]
		@country = countries.sample
		@combine = @country + "+" + type.sample 
	end

	def show
		@query = "tags=" + @combine + "&format=json"
		@query
	end

	def country_name
		@country 
	end

end 
