# Write your code here
require 'net/http'
require 'open-uri'
require 'json'
class GetRequester 
    def initialize(url)
        @url = url
    end

    def 