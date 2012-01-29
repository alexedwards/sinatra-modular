module Example
	class Controller < Sinatra::Base

		get '/' do
			@title = 'Example page'
			erb :example
		end

	end
end
