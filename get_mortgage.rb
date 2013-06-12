require 'nokogiri'
require 'open-uri'

#open uri let's us grab info from url provided. 
#at_css extracts only 1 element
#reference the pictures

#write a new file

File.open('listing_mortgage.txt', 'w') do |file|

	url = "http://www.zillow.com/homes/for_sale/Seattle-WA/16037_rid/0-175000_price/0-658_mp/days_sort/47.76633,-122.057762,47.463612,-122.613945_rect/10_zm/"

 	data = Nokogiri::HTML(open(url)) do |config|
  	config.noblanks
	end

	all_monthly_payments = data.css(".monthly-payment").text.strip
	
	payments = all_monthly_payments.split("Est. ")

	pmts = payments.join("\n")

	# puts pmts

	# puts pmts.class

		file.puts "#{pmts}"
end







	# 1000.times do |i|
	# 	data << 
	# end


	# CSV.open('output.csv', 'wb') do |row|
	# 	row << contact_row_data

	# 	data.each do |d|
	# 		row << d
	# 	end
	# end


	#puts all_monthly_payments.class
	#returns string

	#all_monthly_payments.each do |listing|

		#puts listing
	#end






