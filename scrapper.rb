require 'nokogiri'
require 'httparty'
require 'byebug'

def scrapper
  url = "https://www.itjobs.pt/emprego?type=1&location=14"
  unparsed_page = HTTParty.get(url) #give us back the raw html of the page
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end

scrapper
