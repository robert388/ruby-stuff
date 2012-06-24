require 'nokogiri'
require 'open-uri'


htmlData = Nokogiri::HTML(open('http://feeds.feedburner.com/tweakers/mixed'));
#walk over every title wich
htmlData.css('item title').each do |title| 
	#echo title text
	puts title.text;
	puts " ";
end;
