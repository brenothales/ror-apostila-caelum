require 'rubygems'
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open('https://twitter.com/guilffer'))
items = doc.css ".ProfileTweet"
items.each do |item|
  autor = item.css('.ProfileTweet-fullname').first.content
  tweet = item.css(".ProfileTweet-text").first.content

  puts autor
  puts tweet
  puts
end
