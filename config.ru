require 'bundler'
Bundler.require(:default)

require './settings'
Dir.glob('./*/controller.rb') {|f| require f}
Dir.glob('./*/model.rb') {|f| require f}

map "/example" do
	run Example::Controller
end
