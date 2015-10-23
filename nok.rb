require 'nokogiri'
require 'open-uri'
 
doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))
 
#search the HTML until you find the right element for the list
search = doc.css('.directions-components.main-unit')
puts search

