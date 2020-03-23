# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester
    attr_accessor :string
    def initialize(string)
        @string = string 
    end

    def get_response_body
        uri = URI.parse(string)
        resp = Net::HTTP.get_response(uri).body
        resp
    end

    def parse_json
        JSON.parse(get_response_body)
    end

end

