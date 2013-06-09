require 'nokogiri'
require 'open-uri'

url = "http://www.zillow.com/homes/for_sale/Seattle-WA/pmf,pf_pt/16037_rid/0-200000_price/0-754_mp/days_sort/47.688735,-121.956825,47.44829,-122.735481_rect/10_zm/"

data = Nokogiri::HTML(open(url))

listing = data.css("#container")

listing.each do |listing|
	puts listing.at_css(".price").text

	puts listing.at_css(".monthly-payment").text	
end


# listing_price = data.css(".price").text.strip
# listing_monthly_payment = data.css(".monthly-payment").text.strip

#zillow = zillow.split("For Sale:")



# zillow.each do |listing|
# 	puts listing.at_css('.price').text
# end


# puts data.at_css("#price").text.strip

# puts data.at_css("#time").text.strip

# puts data.at_css("#stock").text.strip 










# require 'rubygems'
# require 'nokogiri'
# require 'openuri'

# File.open('books.txt', 'w') do |f|
# 	page = Nokogiri::HTML(open("http://www.books.com"))
# 	books = page.css('table tr td:firstchild span')
# 	books.each do |book|
# 		f.write(“<div>” + book + "</div>\n")
# 		end
# 	end
# end