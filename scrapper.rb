require 'nokogiri'
require 'httparty'
require 'byebug'

def scrapper
  url = "https://ec.europa.eu/digital-single-market/en"
  unparsed_page = HTTParty.get(url) #give us back the raw html of the page
  parsed_page = Nokogiri::HTTP(unparsed_page)
  byebug
end

scrapper
