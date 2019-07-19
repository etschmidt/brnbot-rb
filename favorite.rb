require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key          = ENV["consumer_key"]
	config.consumer_secret       = ENV["consumer_secret"]
	config.access_token          = ENV["access_token"]
	config.access_token_secret   = ENV["access_token_secret"]
end

@topic = ["satire", "business news", "comedy", "satire"].sample

client.search(@topic).take(5).each do |tweet|
	client.favorite(tweet)
end