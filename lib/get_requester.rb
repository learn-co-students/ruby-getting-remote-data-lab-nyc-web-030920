# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester 

  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    json_data = JSON.parse(self.get_response_body)
  end
end

learn_get_requester = GetRequester.new('https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json')
learn_get_requester.parse_json