require 'bundler'
Bundler.require(:default, ENV['RACK_ENV'])

require './settings'
Dir.glob('./*/controller.rb') {|f| require f}
Dir.glob('./*/model.rb') {|f| require f}

map "/example" do
	run Example::Controller
end
