require 'nokogiri'
require 'open-uri'
require 'rubygems'


File.open('divs_for_results.html', 'w') do |html|
	listing_w_results_price = []
	listing_w_results_mortgage = []
	File.open('listing_price.txt', 'r') do |txt|
		while (line = txt.gets)
			listing_w_results_price << line
    end
  end
  
  File.open('listing_mortgage.txt', 'r') do |txtmortgage|
  	while (line = txtmortgage.gets)
  		listing_w_results_mortgage << line
  	end
  end

	hash = {}

	listing_w_results_price.each_with_index.each do |price, mortgage|
		hash[price] = listing_w_results_mortgage[mortgage]
	end

# hash.keys.sort.each do |key|
#   puts "#{key}-----"
#   hash[key].each { |val| puts val }
#   puts "#{val}"
# end

hash.each do |price, mortgage|

		puts html.write("<div class='individual_listing'>\n")
		puts html.write("<p> #{price} </p>\n")
		puts html.write("<p> #{mortgage} </p>\n")
		puts html.write("</div>\n")

	end
	

		
end




#WHATT ROBERT SHOWED ME. inject.
#Puts ary.inject("<html><body>") {|previous, s| previous + "<p>#{s}: #{s.length}</p>\n"} + "</body></html>"

