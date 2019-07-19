require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key        = ENV["CONSUMER_KEY"]
	config.consumer_secret     = ENV["CONSUMER_SECRET"]
	config.access_token        = ENV["ACCESS_TOKEN"]
	config.access_token_secret = ENV["ACCESS_TOKEN_SECRET"]
end

@topic = ["satire", "business news", "comedy", "satire"].sample

client.search(@topic).take(7).each do |tweet|
	client.favorite(tweet)
end