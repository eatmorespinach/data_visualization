require 'nokogiri'
require 'open-uri'

File.open('listing_price.txt', 'w') do |file|

	url = "http://www.zillow.com/homes/for_sale/Seattle-WA/16037_rid/0-175000_price/0-658_mp/days_sort/47.76633,-122.057762,47.463612,-122.613945_rect/10_zm/"

 	data = Nokogiri::HTML(open(url)) do |config|
  	config.noblanks
	end

	all_prices = data.css(".price").text.strip
	
	prices = all_prices.split("$")

	puts prc = prices.join("\n")

	file.write "#{prc}"
end








