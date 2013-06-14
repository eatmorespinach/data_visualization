require 'nokogiri'
require 'open-uri'

#open uri let's us grab info from url provided. 
#at_css extracts only 1 element
#reference the pictures

#write a new file

File.open('listing_address.txt', 'w') do |file|

	url = "http://www.zillow.com/homes/for_sale/Seattle-WA/16037_rid/0-175000_price/0-658_mp/days_sort/47.76633,-122.057762,47.463612,-122.613945_rect/10_zm/"

 	data = Nokogiri::HTML(open(url)) do |config|
  	config.noblanks
	end


	address = data.css("span").select{|link| link['itemprop'] == "streetAddress"}
	address.each{|link| puts link['href'] }

	#address is an array at this point

	#string_address = address.join

	

# address = data.css("span[itemprop=streetAddress]")
# address.each{|link| puts link['href']}




	puts address
	file.puts "#{address}"

end

