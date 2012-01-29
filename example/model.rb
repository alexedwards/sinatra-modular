class Quote
	require 'net/http'
	
	def self.random
		uri = URI('http://www.iheartquotes.com/api/v1/random')
		quote = Net::HTTP.get(uri)
		quote.gsub!(/\n\n.+$/m,'')
	end
	
end
