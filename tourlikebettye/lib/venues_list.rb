

require 'pry'
# require "bundler"
# require "bundler/setup"
# require "../lib/venues_list.rb"
require 'nokogiri'
require 'open-uri'

# class BettyeVenues
    bettyes_venues = []
    bettye_noko = Nokogiri::HTML(open("http://www.bettyelavette.com/tour"))
    jambase_noko = Nokogiri::HTML(open("https://www.jambase.com/band/bettye-lavette"))

     bettyes_venues = bettye_noko.css('div.artists--bettye-lavette')
    #  bettyes_venues << jambase_noko.css('.jbshow jbevent')
     p bettyes_venues

# end