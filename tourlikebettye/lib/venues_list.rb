

require 'pry'
require "bundler"
require "bundler/setup"
require "../lib/show_list.rb"
require 'nokogiri'
require 'open-uri'

class BettyeVenues
    bettyesvenues = []
    venues_page = Nokogiri::HTML(open("http://www.bettyelavette.com/tour"))
    past_venues_page = Nokogiri::HTML(open("https://www.jambase.com/band/bettye-lavette"))

    

end