require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

flatirons_header = doc.css("#header-content > div > h1").text
doc.search(".title-oE5vT4")

courses = doc.css(".title-oE5vT4").text

binding.pry