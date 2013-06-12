require 'nokogiri'
require 'open-uri'

url = "http://ruby.bastardsbook.com/files/hello-webpage.html"

page = Nokogiri::HTML(open(url))



puts page.css('title')[0].name

links = page.css('a')


puts links[0]["href"]








#puts street_address = data.css(".streetAddress").text.strip NOT WORKING

#2nd try at trying to pull the address
#puts Hash[doc.xpath("//span itemprop/@*[Address(name())]").map{|e| [e.name]}]





# all_prices.each do |price|
# 	puts price.css(".price").text.strip

# 		all_monthly_payments.each do |payments|
# 			puts payments.css(".monthly-payment").text		
# 		end
# 	end
	#puts all_listings.class
	
	



# listing_price = data.css(".price").text.strip
# listing_monthly_payment = data.css(".monthly-payment").text.strip

#zillow = zillow.split("For Sale:")



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