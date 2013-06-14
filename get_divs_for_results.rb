require 'nokogiri'
require 'open-uri'
require 'rubygems'


listings = []

File.open('listing_price.txt', 'r') do |price|
	while (line = price.gets)
		listings << {:price => line.strip.squeeze}
  end
end

File.open('listing_mortgage.txt', 'r') do |mortgage|
  i = 0
  while (line = mortgage.gets)
		listings[i][:mortgage] = line.strip.squeeze
  	i+= 1 #could use each_with_index later
  end
end

File.open('listing_address.txt', 'r') do |address|
  i = 0
  while (line = address.gets)
		listings[i][:address] = line.strip.squeeze
  	i+= 1 #could use each_with_index later
  end
end

#listing now has a bunch of data. 

#loop over the hash and refer to them by name. 


File.open('divs_for_results.html', 'w') do |html|

	listings.each do |house| #address

		html.write("<div class='individual_listing'>\n")
		html.write("<p> #{house[:price]} </p>\n")
		html.write("<p> #{house[:address]} </p>\n")
		html.write("<p> #{house[:mortgage]} </p>\n")
		html.write("</div>\n")

	end
		
end


# {{:address => "519 W Roy St, Seattle, WA" {:price => "500,000", :mortgage => "Mortgage: $410/mo"}}
#  {:address => "20 E Bob St, Seattle, WA" {:price => "500,000", :mortgage => "Mortgage: $410/mo"}}
#  }


#WHATT ROBERT SHOWED ME. inject.
#Puts ary.inject("<html><body>") {|previous, s| previous + "<p>#{s}: #{s.length}</p>\n"} + "</body></html>"

