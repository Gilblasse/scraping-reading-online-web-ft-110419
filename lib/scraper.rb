require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

flatirons_header = doc.css("#header-content > div > h1").text

career_section = doc.xpath('.content-3OTK_R')
# courses = career_section.search(".title-oE5vT4").map {|title| title.text}
# paragraphs = career_section.search("p").map {|content| content.text}

binding.pry
