module Example
	class Controller < Sinatra::Base

		get '/' do
			@title = 'Example page'
			@quote = Quote.random
			erb :example
		end

	end
end
