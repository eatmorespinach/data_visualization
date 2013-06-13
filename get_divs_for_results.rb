require 'nokogiri'
require 'open-uri'

#require 'rubygems'


#I'm trying to write divs


File.open('divs_for_results.html', 'w') do |html|
	listing_w_results = []
	File.open('listing_price.txt', 'r') do |txt|
		while (line = txt.gets)
			listing_w_results << line
    end
  end

  listing_w_results.each do |x|

		puts html.write("<div class='individual_listing'>\n")
		puts html.write("<p> #{x} </p>\n")
		puts html.write("<p> Mortgage: $824/mo </p>\n")
		puts html.write("</div>\n")

	end
		#some_variable
		#txt.puts(some_variable)
end




#WHATT ROBERT SHOWED ME. inject.
# Puts ary.inject("<html><body>") {|previous, s| previous + "<p>#{s}: #{s.length}</p>\n"} + "</body></html>"

