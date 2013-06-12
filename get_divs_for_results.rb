require 'nokogiri'
require 'open-uri'

#require 'rubygems'


#I'm trying to write divs


File.open('divs_for_results.html', 'w') do |html|
	listing_w_results = []
	File.open('listing_price.txt', 'r') do |txt|
		while (line = txt.gets)
			listing_w_results << [line.chomp, txt.gets.to_i]
    end
  end

		#some_variable
		#txt.puts(some_variable)
	end
end


<div class='bar_wrapper' data-name='new york city'>
  <div class='bar' style='height:0.0%;'></div>
</div>
<div class='bar_wrapper' data-name='ad'>
  <div class='bar' style='height:11.764705882352942%;'></div>
</div>
<div class='bar_wrapper' data-name='los angeles'>
  <div class='bar' style='height:39.411764705882355%;'></div>
</div>

