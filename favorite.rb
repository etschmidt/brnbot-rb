require 'rubygems'
require 'twitter'

client = Twitter::REST::Client.new do |config|
	config.consumer_key          = "R01stciClYF60ycRGvqrhwGsn"
	config.consumer_secret       = "0SzVv7JYuljAYiojQ3pHNaUHhgdYNQjdua5JivT8UxLSiYYJ4R"
	config.access_token          = "1072002479137669123-BCgOEnZJVWS2G5etIFZ6lpg3Y5Cv7C"
	config.access_token_secret   = "4xXvcI3n5hhIdfahq9R2SGqapJYBbRMi50spgC4t3BIRp"
end

@topic = ["satire", "business news", "comedy", "satire"].sample

client.search(@topic).take(5).each do |tweet|
	client.favorite(tweet)
end