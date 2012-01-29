class Sinatra::Base
	
	# This is where your application-wide settings go.
	
	configure do
		set :views, './views'
	end
	
	configure :development do
		require 'sass/plugin/rack'
		use Sass::Plugin::Rack
	end
	
	configure :production do
		# ...
	end
		
end
