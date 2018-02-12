require 'bundler'
Bundler.require
require 'pp'


require 'httparty'
require 'json'

# In these two lines we get the data from Spotify and save to the variable called top_tracks.

response = HTTParty.get('https://api.census.gov/data/2016/acs/acs1/subject/variables.json')
# information = JSON.parse(response.body)
information = JSON.parse(response.body, {:symbolize_names => true})

# puts information[:S2002_C01_045E]
puts information[:attributes]
puts information[:concept]
