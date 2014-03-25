require 'rubygems'
require 'oauth'

consumer_key = '1oN2xIwnRmx99u0waAAzoA'
consumer_secret = '3PPoDyYTeQUB2NNHEPF805gN6Gw'
token = 'GMtHW95Cg5WZXLZ6KU3frgZm8XIzdZ67'
token_secret = 'Ak8iGfFokLk_lgulkDa_k75Vxd0'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)

path = "/v2/search?term=bars&location=boston"

p access_token.get(path).body