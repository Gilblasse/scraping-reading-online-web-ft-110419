require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)

flatirons_header = doc.css("#header-content > div > h1").text

career_section = doc.xpath('//*[@id="2a778efd-1685-5ec6-9e5a-0843d6a88b7b"]/div/div[2]/div')
# courses = career_section.search(".title-oE5vT4").map {|title| title.text}
# paragraphs = career_section.search("p").map {|content| content.text}

binding.pry
